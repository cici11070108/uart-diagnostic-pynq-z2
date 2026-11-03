# UART 第一次板级接收包

日期：2026-10-27。目标环境：PYNQ-Z2、Vivado 2023.2、现有 `pynq_uart` 工程、`uart_system` Block Design。

## 这次的目标

电脑通过 USB 转串口发送一个十六进制字节 `55`，你自己的 Verilog UART 在 FPGA 中接收，Python 在 Jupyter 中显示 `55` 并导出 CSV。通过后再发送 `00 01 … 3F` 共 64 字节。

这个包新增接收缓存和处理器访问通路，保留你已有的 UART 接收器、100 MHz 时钟以及 `CLKS_PER_BIT=868`。本阶段使用固定 115200、8 个数据位、无校验、1 个停止位（8N1）。

## 文件用途

| 文件 | 用途 |
|---|---|
| `rtl/uart_event_fifo.v` | 缓存最多 1024 条字节或停止位错误事件 |
| `vivado/01_connect_uart.tcl` | 在已有连线图中加入缓存、AXI GPIO 和 AXI Interconnect，并验证连线图 |
| `constraints/uart_rx_pmoda.xdc` | UART 输入指定到 PMODA 的 1 号脚，FPGA Y18，LVCMOS33 |
| `constraints/uart_rx_cdc.xdc` | 在实现阶段约束原 UART 的两级输入同步器 |
| `vivado/02_export_overlay.tcl` | 生成比特流成功后，导出配套的 `uart_diag.bit` 与 `uart_diag.hwh` |
| `board/uart_diag.py` | 板端 Python 读取驱动 |
| `board/02_uart_receive.ipynb` | 可直接上传到 Jupyter 的首次接收测试 |
| `pc/send_uart.py` | 在 Windows 上通过 USB 转串口发送 1～64 个字节 |
| `tests/` | 可复现的 RTL 仿真和 Python 协议测试；不加入 Vivado Design Sources |

## 1. 在 Windows 放好文件并备份工程

将整个包解压，使下面这个文件真实存在：

```text
C:\Users\cici\Desktop\FPGA\uart_board_stage1\vivado\01_connect_uart.tcl
```

注意不要多套一层同名文件夹。保留整个 `uart_board_stage1` 文件夹，Vivado 会引用其中新增的 RTL 和约束文件。

打开你原来的工程：

```text
C:\Users\cici\Desktop\FPGA\pynq_uart\pynq_uart.xpr
```

先保存，再选择 **File → Project → Archive**，将备份放到工程外的 `FPGA\backup` 文件夹。现有 `uart_rx.v` 是你本地工程的版本；本包不会用仿真参考文件覆盖它。

## 2. 在 Vivado 自动补全这一段连线

打开 `uart_system`，在窗口底部 **Tcl Console** 输入下面这一行并回车。这里是 Vivado 的命令框，不能粘贴到 Python 或 Windows CMD 中。

```tcl
source {C:/Users/cici/Desktop/FPGA/uart_board_stage1/vivado/01_connect_uart.tcl}
```

脚本会先检查已经完成的时钟、复位、868 参数和现有模块名称，然后新增：

- `uart_event_fifo_0`：把短暂的接收事件存下来；
- `axi_gpio_diag`：让处理器读取数据和发出取下一条的命令；
- `axi_interconnect_diag`：连接 Zynq 处理器的 AXI 总线；
- `uart_rx_i`：接到 PMODA 1 号脚的外部输入。

脚本会将已有 `uart_rx_0/rst` 的复位极性元数据纠正为高有效，因为你的 RTL 使用 `if (rst)`。它不反相电气信号，也不修改 UART 算法。

正常结束会看到：

```text
UART_STAGE1: DONE. Block design validated and saved.
```

如果出现 `ERROR` 或 `UART_STAGE1:` 后面的报错，保留完整输出并截图。脚本是一次性增量操作，遇到部分执行后的错误不要反复运行、随意删块或重新建工程；先根据错误修正已有状态。

仅当脚本明确报告 `Cannot set the existing UART rst metadata ACTIVE_HIGH` 时，说明该 Vivado 对象不允许直接改这项元数据。此时新模块尚未添加。可在工程现用 `uart_rx.v` 的 `input wire rst,` 前加入下面两个属性，再刷新 Block Design 中的 RTL 模块后重试；不要修改复位判断逻辑：

```verilog
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH" *)
input wire rst,
```

## 3. 生成 FPGA 配置文件

在左侧切换到 **Sources → Design Sources**，找到 `uart_system.bd`：

1. 右键 `uart_system.bd` → **Generate Output Products** → 使用默认选项生成。
2. 再右键 `uart_system.bd` → **Create HDL Wrapper** → 选 **Let Vivado manage wrapper and auto-update** → OK。
3. 确认 `uart_system_wrapper` 是顶层；必要时右键它 → **Set as Top**。
4. 点击左侧 **Generate Bitstream**，允许 Vivado 依次运行综合和实现。
5. 等待 **Bitstream Generation successfully completed**。若报错，复制第一条实际错误及附近上下文。

比特流生成成功不等于全部时序要求已满足。打开实现结果的 **Timing Summary**，确认时序通过；若出现负的 WNS/WHS、未满足的约束或 `UART_CDC` 错误，先保留报告定位。CDC 文件只切断异步 RX 输入到第一级同步寄存器的路径，不会把整个设计的时序检查关闭。

完成后在 **Tcl Console** 执行：

```tcl
source {C:/Users/cici/Desktop/FPGA/uart_board_stage1/vivado/02_export_overlay.tcl}
```

它会在原工程目录的 `uart_overlay_export\日期时间\` 新建导出目录，里面是：

```text
uart_diag.bit
uart_diag.hwh
```

两者必须来自同一次有效构建并保持相同文件名前缀。后续不需要用 Vivado Hardware Manager 下载；由板上 Python 的 `Overlay` 加载这两个文件。

## 4. 确认 USB 转串口模块并接线

这里使用你另买的 **USB 转 TTL 串口模块**。它的 COM 号和开发板 Micro-USB 控制台之前的 COM6 是两个不同设备，不能根据示例猜测实际端口。

接线前确认模块 **TX 输出逻辑电平为 3.3 V**。看到模块上有 `3V3` 电源脚，并不能单独证明 TX 是 3.3 V。如果没有明确规格/跳线说明，先拍模块正反面及型号，或用万用表确认空闲 TX 相对 GND 的高电平。

按已有流程关闭板子，并断开 USB 转串口模块的 USB 供电后再接杜邦线：

| USB 转串口模块 | PYNQ-Z2 |
|---|---|
| TX / TXD（已确认 3.3 V） | PMODA 1 号脚，FPGA Y18 |
| GND | PMODA 5 号脚或 11 号脚（GND） |
| RX / RXD | 本次单向接收测试不接 |
| VCC / 5V / 3V3 电源脚 | 不接开发板；双方各自通过 USB 供电 |

以板上 `PMODA` 名称和 `1` 号脚丝印识别引脚，不依据照片里的“上排/下排”猜测。PMODA 的 6、12 号脚是 3.3 V 电源，不是 GND。该组信号还与树莓派接口共享，本次只接这一个输入。针脚位置看不清时拍近照再确认。

## 5. 在 Jupyter 加载 UART 设计

板子正常启动后进入：

```text
http://192.168.2.99:9090/tree
```

打开之前建立的 `uart_diag` 文件夹，点击 **Upload**，上传并逐个确认以下四个文件：

- 本次导出的 `uart_diag.bit`；
- 本次导出的 `uart_diag.hwh`；
- 本包 `board` 文件夹中的 `uart_diag.py`；
- 本包 `board` 文件夹中的 `02_uart_receive.ipynb`。

打开 `02_uart_receive.ipynb`。逐格按 Shift+Enter，按照提示完成 **加载 → 清空 → 去 Windows 发送 → 回到网页读取**。不要直接 Run All，因为中间需要你切换到电脑发送。

加载自己的 UART 配置后，之前的 LED 演示硬件被替换。接收结果以这个新笔记本中的真实输出为准。

## 6. 在 Windows 发送第一条数据

打开 `uart_board_stage1` 文件夹，在文件管理器地址栏输入 `cmd` 并回车。第一次使用运行：

```bat
py -m pip install pyserial
py -m serial.tools.list_ports
```

从设备管理器或端口列表找到 **USB 转串口模块本身** 的 COM 号。下面以 COM7 为例，按你的实际设备修改：

```bat
py pc/send_uart.py --port COM7 --hex 55
```

确保执行顺序是先在 Jupyter 运行“清空”，再发送，最后读取。`--hex 55` 发送一个值为 `0x55` 的字节；不是发送两个字符 `5`。发送工具固定 115200 8N1，关闭软硬件流控。

第一次的验收条件：网页读到恰好 1 条有效事件，内容 `55`，停止位错误为 0，溢出为 0，FIFO 剩余数量为 0。

单字节通过后，再按笔记本提示清空并发送：

```bat
py pc/send_uart.py --port COM7 --ramp
```

它发送 `00…3F` 共 64 字节。网页应逐字节比对完全一致，数量 64，错误和溢出为 0。

## 7. 保存与下次恢复

- 笔记本 Ctrl+S 会保存代码和输出到 SD 卡；用 File → Download as → Notebook (.ipynb) 另存电脑副本。
- 点击笔记本生成的 CSV 链接，下载实际测试记录。
- Vivado 保存并归档工程；保留本次 `bit/hwh` 配对以及本包。
- 收工时在 Jupyter 的 Terminal 执行 `sudo shutdown -h now`，等系统关机后再关闭电源。
- 下次开板进入同一个笔记本，从加载硬件的单元格开始重新运行。SD 系统不需要重新烧录，未改硬件也不需要重新跑 Vivado。

## 已验证与尚未验证

已在开发环境运行 Icarus Verilog 功能仿真：FIFO 默认容量 1024、单周期事件保存、命令确认、溢出、清空、同时入出队、多轮回绕、错误事件；以及使用 100 MHz / 868 的 UART 与 FIFO 联合测试。具体输出见 `tests/results/rtl_simulation.txt`。

Python 的纯软件 MMIO 协议测试覆盖读取顺序、确认延迟与超时、错误字节留空、溢出和 CSV。它不替代开发板测试。

UART 联合仿真使用你先前上传的接收器快照 `tests/reference/uart_rx_original.v`，实例参数设为 868。当前 Windows 工程最新源码没有在这里直接读取，因此这一快照只用于验证集成思路，不能加入实际工程替代你的源文件。

本包没有预先生成 `.bit`，也没有宣称在你的 Vivado 中综合、实现或板级测试成功；这些结果需要按以上步骤获得。GPIO 和缓存必须共享同一个 100 MHz 时钟。

当前范围：单路、115200 8N1、最多 1024 条有限缓存、错误事件、短突发测试、CSV 导出。缓存采用 distributed/LUT RAM，实际资源数以 Vivado 报告为准。持续满速无损采集、运行时波特率配置、硬件时间戳、可控异常的板级注入都属于后续工作。停止位错误记录的字节留空，因为原 UART 不输出错误帧字节；不能把上一条正确数据当作该错误帧数据。

## 接口速查（理解实现时再看）

AXI GPIO 第 1 通道为 32 位全输入（相对地址 0x00），第 2 通道为 32 位全输出（0x08）。Python 从 HWH 获取 IP 地址，不写死物理基地址。

| status 位 | 意义 |
|---|---|
| 31:24 | 签名 A5 |
| 23:13 | 缓存事件数 0～1024 |
| 12 | 队首数据字节有效 |
| 11 | 最近接受的命令 toggle 应答 |
| 10 | 粘滞溢出，清空命令复位 |
| 9 | 缓存非空 |
| 8 | 队首停止位错误 |
| 7:0 | 队首字节；错误或空队列时为 0，软件显示为空 |

command[0] 是请求 toggle，command[2:1] 为命令：0=无操作、1=取下一条、2=清空、3=保留无操作。改变 toggle 才执行一次，软件等待应答后才能发下一条命令。清空与新事件同周期时清空优先；缓存满且同周期取出一条时允许同时接收新事件。

## 一手参考资料

- TUL PYNQ-Z2 Reference Manual v1.1，16 节、表 13，PMODA 接口及封装引脚：
  https://dpoauwgwqsy2x.cloudfront.net/Download/PYNQ_Z2_User_Manual_v1.1.pdf
- AMD AXI GPIO PG144 寄存器偏移：
  https://docs.amd.com/r/en-US/pg144-axi-gpio/Register-Space
- PYNQ Overlay Design，bit/hwh 配对、路径及加载时钟：
  https://pynq.readthedocs.io/en/v3.1/overlay_design_methodology/overlay_design.html
- Vivado 2023.2 make_wrapper：
  https://docs.amd.com/r/2023.2-English/ug835-vivado-tcl-commands/make_wrapper
- pySerial 官方串口发送及端口枚举说明：
  https://pyserial.readthedocs.io/en/latest/shortintro.html

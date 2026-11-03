# 串口通信诊断平台：第二阶段，可选波特率

更新日期：2026-10-28。面向你已经实测通过的 PYNQ-Z2 工程，Vivado 2023.2。

## 这次做什么

把原先固定 115200 的 UART 接收器升级为运行时可选 **9600、19200、38400、57600、115200、230400** 六档。帧格式为 8 数据位、无校验、1 停止位（8N1），3.3V TTL，单路输入。

Python 通过已有 AXI GPIO 下发档位，FPGA 返回实际采用的档位；切换会复位接收器、清空 FIFO 和旧溢出标志。新面板会先保存已读取的记录，硬件 FIFO 还有未读取事件时拒绝换档。Windows 发送器的波特率要与面板一致。

**本包包含源码、升级脚本和测试，不含预编译 `.bit/.hwh`。这两个文件需要在你的原 Vivado 工程中重新生成。** 六档数字仿真和软件离线检查已通过；新版 Vivado 编译、时序与板级测试尚待完成，详见 `tests/results`。

## 1. 文件放在哪里

将整个 ZIP 解压到电脑已有的：

```text
C:\Users\cici\Desktop\FPGA
```

解压后并列保留以下三项。已有工程和第一阶段目录继续保留，新增的只是第二阶段目录。

| 路径 | 用途 |
|---|---|
| `C:\Users\cici\Desktop\FPGA\pynq_uart\pynq_uart.xpr` | 继续使用的原 Vivado 工程 |
| `C:\Users\cici\Desktop\FPGA\uart_board_stage1` | 已通过实测的第一阶段代码与记录 |
| `C:\Users\cici\Desktop\FPGA\uart_baud_stage2` | 本次升级包 |

确认能找到这个文件，避免多套了一层同名目录：

```text
C:\Users\cici\Desktop\FPGA\uart_baud_stage2\vivado\01_upgrade_baud.tcl
```

## 2. 升级原工程并生成 bitstream

这一步在电脑 Vivado 中完成，不要求板子在线。若板子仍在使用03面板，先结束 Windows 发送、导出数据，保存03；加载新硬件前还要关闭03内核。

1. 打开原工程 `C:\Users\cici\Desktop\FPGA\pynq_uart\pynq_uart.xpr`。
2. 在 Vivado 下方 **Tcl Console** 输入以下命令并回车：

```tcl
source {C:/Users/cici/Desktop/FPGA/uart_baud_stage2/vivado/01_upgrade_baud.tcl}
```

脚本先核对器件、100MHz时钟、已有模块和连线，再将原工程及其引用的源文件归档到：

```text
C:\Users\cici\Desktop\FPGA\uart_baud_stage2\backups\pynq_uart_before_baud_日期时间.zip
```

这是工程源文件备份；为减少体积，不包含已生成的综合/实现结果。你电脑上 `uart_board_stage1\records\2026-10-28` 中的旧 `.bit/.hwh` 继续作为已实测版本保存。

备份成功后，脚本将原 BD 中的 `uart_rx_0` 和 `uart_event_fifo_0` 换成一个组合接收核心 `uart_diag_baud_core_0`。原 Zynq PS、AXI GPIO、AXI Interconnect、时钟、复位和外部 `uart_rx_i` 端口沿用；旧接收器源文件不删除。PMODA pin 1/Y18 接线不变。

3. 等看到 `UART_BAUD: DONE`。脚本会完成 BD 验证、保存和 Generate Output Products。
4. 点击左侧 **Generate Bitstream**。若提示综合/实现结果过期，允许重新运行。完成时间取决于电脑、工程缓存及是否需要处理报错。

若出现红色错误，保留完整错误内容再处理；脚本有重复执行保护。若未输出 DONE，不要猜测成功后继续烧录。`BACKUP_READY` 后发生错误时，打印的 ZIP 就是修改前的恢复依据。

## 3. 导出新版硬件及实际报告

**仅在 Generate Bitstream 成功后**，在同一个 Vivado Tcl Console 运行：

```tcl
source {C:/Users/cici/Desktop/FPGA/uart_baud_stage2/vivado/02_export_baud.tcl}
```

看到 `UART_BAUD_EXPORT: DONE` 后，打开控制台打印的 `EXPORT_DIR`，例如：

```text
C:\Users\cici\Desktop\FPGA\uart_baud_stage2\export\日期时间
```

该目录根部有需要上传到板子的四个文件：

- `uart_diag_baud.bit`
- `uart_diag_baud.hwh`
- `uart_diag_baud.py`
- `04_uart_baud_panel.ipynb`

同时生成 `reports/utilization.rpt`、`reports/timing_summary.rpt`、`reports/cdc.rpt` 和 `BUILD_INFO.txt`。这些是你的真实 Vivado 运行结果，可用于作品资源占用与时序评估。脚本会拒绝过期实现和可读到的负 setup/hold slack；仍应查看完整 Timing Summary 和 CDC 报告，不能只依据导出成功认定所有约束正确。

## 4. 把四个文件放到板子上

1. 停止 Windows 发送。保存/导出03面板中的记录，在03里选择 **File → Close and Halt**。同时停止旧02或其他操作该 UART 的程序。
2. 打开 `http://192.168.2.99:9090/tree`。板子若刚开机，等它启动完成。
3. 在 Jupyter 根目录点击 **New → Folder**，勾选新文件夹并 Rename 为 **`uart_baud`**，再进入它。
4. 用 **Upload** 选择上一步导出目录中的四个文件，完成上传。
5. 打开 `04_uart_baud_panel.ipynb`，选择 **Cell → Run All**。

只运行下方启动格时，新笔记本会提示先运行定义格。03和04使用同一硬件锁；若提示另一个面板正在使用硬件，结束旧笔记本内核，不要删锁文件。

初始面板应显示 **硬件档位 115200**。加载新的 `.bit` 会重新配置 FPGA；切换波特率本身则不需要再次生成或下载 bitstream。

## 5. 第一轮板级验收：先9600，再115200

保持已经实测通过的两根接线：CH343 TX → PMODA物理pin1，CH343 GND → PMODA物理pin5；CH343的3.3V逻辑跳线保持。无需重新接线。如确需改接线，应先让板子正常关机并断开板子和CH343的USB供电。

### 5.1 验证9600档

面板下拉框选 **9600**，点 **应用波特率**，等显示“硬件回读确认9600”。在 Windows 命令提示符中执行：

```bat
cd /d C:\Users\cici\Desktop\FPGA\uart_baud_stage2
py pc/send_uart_baud.py --port COM5 --baud 9600 --ramp
```

命令结束后，回面板点 **读取数据**。预期：

- 64条事件、64个有效字节、0个停止位错误。
- 数据依次为 `00..3F`，自动检查显示通过。
- FIFO剩余0，未观察到溢出。

点击 **导出 CSV**，下载两个同编号文件，例如 `uart_9600_0001.csv` 和 `.json`。编号会递增，以实际显示为准。

### 5.2 验证切回115200

停止发送并读空FIFO后，在面板应用 **115200**。Windows执行：

```bat
py pc/send_uart_baud.py --port COM5 --baud 115200 --ramp
```

读取并检查相同的64条结果，再导出。这两项通过后，完成了“软件切换两个实际硬件档位”的第一轮板测。其余四档按同样步骤做，直到六档均有记录。

### 5.3 各档的BREAK异常与恢复

例如面板为115200时，先点 **开始新记录**，再在Windows执行：

```bat
py pc/send_uart_baud.py --port COM5 --baud 115200 --break-recovery
```

读取后预期3条事件：1条无有效字节的红色停止位错误，随后正常 `55`、`AA`；FIFO读空，无溢出，自动检查通过。测试其他档位时，同步改面板和命令中的 `--baud`。

20ms BREAK和100ms间隔是软件请求时间，未用仪器测量，不能作为实测波形时间或接收恢复延迟。正常64字节测试只证明该有限突发的数据一致性，不能证明持续满速无丢失。当前单个坏停止位覆盖来自仿真，不能写成板级精准注入已完成。

## 6. 记录、保存与再次继续

板上导出目录是 **`uart_baud/panel_exports`**。下载到电脑后，建议统一放到：

```text
C:\Users\cici\Desktop\FPGA\uart_baud_stage2\records\2026-10-28
```

日期按实际测试日修改。保留CSV及同编号JSON，保存面板截图、当前04笔记本；从本次 `export/日期时间` 复制实际使用的配套bit/hwh/py与BUILD_INFO。自动保存只发生在板子SD卡上，下载到电脑才是额外备份。

CSV包含每条事件的HEX、有效性、停止位错误、溢出观察和硬件档位/分频数。JSON同时保留本轮配置、计数、自动检查结果和是否存在硬件访问错误。理论线速为100MHz/整数分频数；所有导出时间均为Python主机操作时间，不是FPGA逐字节采样时间戳。

关机前完成保存与下载，再在板子Jupyter的 **New → Terminal** 执行 `sudo shutdown -h now`，留时间完成关机，然后断开CH343 USB、关板子电源开关，再整理线缆。下次运行04会重新加载硬件，回到默认115200；CSV文件保留。

## 7. 回到已经验证过的第一阶段

板子回退：停止发送，保存04记录并 **Close and Halt**，打开原 `uart_diag/03_uart_panel.ipynb`，Run All重新加载旧 `uart_diag.bit/.hwh`。不要把新版文件改名覆盖到旧目录。

Vivado工程回退：保留当前工程目录，先关闭工程，将脚本创建的修改前ZIP解压到 `C:\Users\cici\Desktop\FPGA\restore_stage1_日期时间` 这样的新目录，找到其中的 `.xpr` 打开。不要将归档直接解压覆盖现有工作目录。

## 8. 离线验证与边界

- Icarus Verilog 12：Verilog-2001 RTL编译通过；两份SystemVerilog自检bench通过。六档独立标称时间的UART激励、连续帧、BREAK、单坏停止位及恢复；FIFO边界/溢出/切档等见 `tests/results/rtl_simulation.txt`。
- Python软件测试见 `tests/results/software_checks.txt`，使用MMIO模型和widget替身；不等于浏览器渲染或真实板测。
- `tests/test_upgrade_preflight.tcl` 是开发者用的Linux/Tcl测试，验证预检失败时不修改工程，**不要在Windows或Vivado运行此测试文件**。
- 交付前没有在本环境执行Vivado，没有伪造bit/hwh、资源占用数或板级测试CSV。

## 参考资料

- AMD Vivado 2023.2 `archive_project`：https://docs.amd.com/r/2023.2-English/ug835-vivado-tcl-commands/archive_project
- AMD Vivado 2023.2 BD生成输出：https://docs.amd.com/r/2023.2-English/ug994-vivado-ip-subsystems/Using-the-Generate-Output-Products-Dialog-Box
- PYNQ overlay设计与bit/hwh配套：https://pynq.readthedocs.io/en/v3.1/overlay_design_methodology/overlay_design.html
- pySerial API：https://pyserial.readthedocs.io/en/latest/pyserial_api.html

整体项目阶段与建议时间安排见 `docs/PROJECT_STATUS.md`。

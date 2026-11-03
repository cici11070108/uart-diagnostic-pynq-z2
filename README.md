# 串口通信诊断平台

队伍编号：42679。提交整理日期：2026-11-02。

基于 PYNQ-Z2 的单路 UART 诊断平台。FPGA 完成 3.3 V TTL / 8N1 接收、停止位错误检测和 1024 条事件缓存；Python/Jupyter 面板提供六档波特率配置、硬件回读、HEX/ASCII 显示及 CSV/JSON 导出。

本包包含实际 Vivado 工程、源文件、已生成的配套硬件文件和 17 组板级记录。硬件保留原来已实测的构建；本次整理只调整交付说明和面板下载链接。原始测试记录未修改。完整核对结论及构建警告见 `REVIEW_20261102.md`。

## 目录与入口

以下三个目录必须保持并列关系。

| 目录 | 用途 | 当前入口 |
|---|---|---|
| `pynq_uart` | Vivado 2023.2 工程、BD、IP、生成文件和运行报告 | `pynq_uart/pynq_uart.xpr` |
| `uart_board_stage1` | 第一阶段源码、约束和历史实测记录；部分文件仍被工程引用 | 当前引脚约束位于 `constraints/uart_rx_pmoda.xdc` |
| `uart_baud_stage2` | 六档 RTL、驱动、面板、发送器、验证与最终导出 | `export/20261029_203751` |

当前运行用的四件套都在 `uart_baud_stage2/export/20261029_203751/`：

- `uart_diag_baud.bit`
- `uart_diag_baud.hwh`
- `uart_diag_baud.py`
- `04_uart_baud_panel.ipynb`

`board/` 中的驱动和运行版 Notebook 与该导出目录同步。`records/2026-10-31/04_uart_baud_panel.ipynb` 是保留输出的实测存档，含手动溢出实验和下载补救单元格，只用于查阅证据。

## 直接在开发板运行

已有预编译硬件，上板运行不要求重新生成 bitstream。

1. 使用 PYNQ-Z2 及兼容的 PYNQ/Jupyter 环境。现有实验系统通过 `http://192.168.2.99:9090/tree` 访问；这是本次实验的局域网地址，其他网络需使用开发板的实际地址。
2. 连接 CH343 的 3.3 V 逻辑 TX 到 PMODA 物理 1 脚（FPGA Y18），GND 到 PMODA 物理 5 脚。适配器 RX 和电源输出不接开发板。改变接线前应完成关机并断开板卡与适配器供电。
3. 将上述四个同目录文件上传到板端同一文件夹。本次实测目录为 `/home/xilinx/jupyter_notebooks/uart_diag/uart_baud`。
4. 打开导出的运行版 `04_uart_baud_panel.ipynb`，依次执行“定义面板”和“启动面板”两个代码单元格。初始硬件档位为 115200。停止其他正在访问该 UART 的 Notebook 内核后再启动，避免并发访问。
5. Windows 端 Python 需安装 `pyserial`。发送脚本为 `uart_baud_stage2/pc/send_uart_baud.py`，本次 CH343 端口为 COM5；另一台电脑需替换为实际端口。

在 `uart_baud_stage2` 目录执行一次正常输入：

```bat
py pc/send_uart_baud.py --port COM5 --baud 115200 --ramp
```

随后点击“读取数据”，预期接收 64 条 `00..3F`。异常恢复输入为：

```bat
py pc/send_uart_baud.py --port COM5 --baud 115200 --break-recovery
```

该异常实验应在上一轮发送结束、数据读完且 FIFO 为 0 后开始新记录，再发送并读取。预期为一条无有效字节的停止位错误，随后有效 `55`、`AA`。

换档前停止发送并读空 FIFO，选择档位并应用，待硬件回读确认后让发送端使用同一波特率。支持 9600、19200、38400、57600、115200、230400，帧格式固定为 8N1。

## 记录与下载

“读取数据”只从硬件读取并更新页面，不自动导出。开始新记录或成功换档前会保存已有软件记录；最后一轮仍需点击“导出 CSV”。文件保存到当前工作目录的 `panel_exports/`。

整理版运行面板使用内嵌数据下载链接，避免原来硬编码 `/files/uart_baud/` 与实际嵌套路径不一致的问题。文件仍写入板端磁盘；浏览器限制内嵌链接时，可在 Jupyter 文件列表中进入 `panel_exports` 下载。链接内容通过离线校验，当前环境未连接用户浏览器进行点击验证。

Notebook 的 Ctrl+S 保存到板端；下载 `.ipynb` 到电脑才是电脑端备份。记录版 Notebook 不作为启动入口，也不对它执行 Run All。

## 已验证的结果

板级记录在 `uart_baud_stage2/records/2026-10-31/`，共 17 对 CSV/JSON：

| 用例 | 组数 | 已导出事件 |
|---|---:|---:|
| 正常 64 字节与恢复后接收 | 9 | 576 |
| BREAK 错误及后续 55、AA | 7 | 21 |
| 主动溢出轮的已读部分 | 1 | 256 |
| 合计 | 17 | 853 |

逐条核对结果为 846 个有效字节和 7 条预期停止位错误。六档各有一轮正常接收和 BREAK 恢复。主动溢出轮已读 256 条、FIFO 余 768；清空后恢复 64 字节正常接收。所有 JSON 的 CSV 引用均指向同名文件，17 组均未报告硬件访问错误。

当前 PL 时钟为 100 MHz。实际 Routed 报告为整套 PL 850 LUT、961 FF，WNS +2.914 ns，WHS +0.039 ns，建立/保持失败端点均为 0。路由后 DRC 与 methodology 报告均为 0 违规；原实现日志另有 4 条 XDC 命令支持方面的 Critical Warning，见 `uart_baud_stage2/docs/BUILD_NOTES.md`，不能将这次构建描述为零告警。

## 从 Vivado 工程重建

原开发环境为 Vivado 2023.2、器件 `xc7z020clg400-1`、板卡定义 `tul.com.tw:pynq-z2:part0:1.0`。换电脑时需安装对应 Zynq-7000 器件支持及 PYNQ-Z2 1.0 板卡定义；板卡库是环境前置依赖，本包未包含该外部仓库。

保持三个目录并列后直接打开 `pynq_uart/pynq_uart.xpr`。这是已升级的现成工程，不需要新建空工程、重新运行 Board Automation 或再次执行第一阶段/第二阶段的历史升级脚本。XPR 的 9 个文件引用均在本包中；`.gen`、IP 文件及被引用的增量 DCP 均保留。

`uart_board_stage1/vivado/01_connect_uart.tcl` 和 `uart_baud_stage2/vivado/01_upgrade_baud.tcl` 是原开发位置上的历史增量脚本，含 `C:/Users/cici/Desktop/FPGA` 路径检查，不能当作任意路径从零重建脚本。实际生成新的 bitstream 后，应重新导出配套 hwh 并验证该次构建。现有硬件导出目录与 original build 的 bit/hwh 已作 SHA-256 同一性核对，本次未运行 Vivado 重新综合实现。

## 时间和测量边界

板端系统时钟未校准，原 JSON 中的 `2025-05-03` 不作为真实实验日期。时间字段由处理器端软件记录，不是 FPGA 接收时间戳，不能用来测量异常恢复时延。本批记录于 2026-10-31 整理归档，原始字段保留。

目前结果覆盖有限突发、停止位异常恢复和缓存溢出清空。没有验证持续满速无损、长时间运行、线路噪声容限或仪器测得的波特率/恢复时延。冷启动动作有 Notebook 文字操作记录，CSV/JSON 本身不独立证明物理断电。

## 校验与材料

`SHA256SUMS.txt` 为整理包文件清单与校验值；`REVIEW_20261102.md` 记录本次检查和变更。各阶段旧 README、旧进度与原校验清单在 `uart_baud_stage2/docs/HISTORY_*` 和 `SHA256SUMS_original_20261028.txt` 中，仅作开发历史。

提交包保留全部现有工程引用及原始记录，只剔除升级前的重复工程备份 ZIP、临时锁文件和 Python/Jupyter 缓存。授权书、签名、视频和技术报告作为比赛附件单独管理，不属于此代码包。

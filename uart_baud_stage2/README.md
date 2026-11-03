# 可选波特率版本使用入口

更新日期：2026-11-02。该版本已完成六档正常接收与 BREAK 恢复记录，以及 115200 档溢出、清空恢复和上电流程复验。当前提交包已包含实际 bit/hwh，旧版“板测待完成、不含硬件文件”的说明已归档。

## 当前入口

- 项目完整说明：[根目录 README](../README.md)。
- Vivado：打开相邻 `../pynq_uart/pynq_uart.xpr`，不重新执行升级脚本。
- 上板文件：`export/20261029_203751/` 内同名 `uart_diag_baud.bit`、`uart_diag_baud.hwh`、`uart_diag_baud.py` 和 `04_uart_baud_panel.ipynb`。
- 开发用软件：`board/`，与导出目录的驱动、运行 Notebook 同步。
- Windows 发送器：`pc/send_uart_baud.py`，端口使用实际设备管理器中的 COM 号。
- 实测证据：`records/2026-10-31/`，17 对 CSV/JSON 及包含输出的 Notebook。
- 原构建及告警说明：`docs/BUILD_NOTES.md`。
- 本次整理摘要：`../REVIEW_20261102.md`。

## 运行与导出

板端本次实测文件夹为 `/home/xilinx/jupyter_notebooks/uart_diag/uart_baud`。四个运行文件放在同一目录；打开运行版 Notebook，依次执行定义面板与启动面板两个代码单元格。记录目录中的 Notebook 含手动实验格，仅用来查阅历史输出。

默认 115200 / 8N1，六档为 9600、19200、38400、57600、115200、230400。换档前停止发送、读空 FIFO、保存所需记录，应用后确认硬件回读；发送端使用同一档位。

读取不会自动导出最后一轮。点击导出后，CSV/JSON 写入 `panel_exports` 并提供下载链接。本次修复了链接依赖旧绝对网页路径的问题，未修改 UART 驱动协议、RTL、约束或 bit/hwh。

## 已有验证

17 组记录合计 853 条事件：846 个有效字节和 7 条预期停止位错误；所有 CSV/JSON 的引用与内容计数一致。原 JSON 的 2025-05-03 时间为未校准板端时间，不能用于真实日期或恢复时延评估。

硬件导出日期批次 20261029_203751，Vivado 2023.2，100 MHz。真实报告及原始实现日志保留在导出目录和相邻 `pynq_uart/pynq_uart.runs/impl_1`。构建中存在 4 条约束脚本命令支持 Critical Warning，另有已通过的时序、CDC、DRC 和 methodology 结果，详情见 BUILD_NOTES。

`tests/results/` 保留开发阶段的离线验证日志；本次提交检查的新增软件检查结果见根目录 review 资料。历史升级步骤保留在 `docs/HISTORY_README_20261028.md`，不作为当前工程启动步骤。

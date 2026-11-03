# 原构建及复现说明

整理日期：2026-11-02。本文件区分原始构建结果、本次文件核对和后续改进。

## 已核对的硬件文件

以下路径以代码包根目录为基准。`uart_baud_stage2/export/20261029_203751/uart_diag_baud.bit` 与 `pynq_uart/pynq_uart.runs/impl_1/uart_system_wrapper.bit` 逐字相同；SHA-256：

`68db0b96b0f54e54e6fcd072f0dd19152aa4cf25eb26f00aa0038caa8175f93d`

`uart_baud_stage2/export/20261029_203751/uart_diag_baud.hwh` 与 `pynq_uart/pynq_uart.gen/sources_1/bd/uart_system/hw_handoff/uart_system.hwh` 逐字相同；SHA-256：

`79e5e243638a28f49502a55427feda241eb3532cb8415c8c4cd1f2b359d07fb3`

BD/HWH 中的当前核心为 `uart_diag_baud_core_0`，PL 时钟 100 MHz，器件为 xc7z020clg400-1。本次没有修改硬件源码、约束文件、XPR、bitstream 或 HWH，也没有重新运行综合与实现。

## 通过结果与告警同时保留

实际 Routed 报告中：WNS +2.914 ns、WHS +0.039 ns，setup/hold 失败端点为 0；CDC 报告识别一条 CDC-3 Info 的两级同步路径。输入至第一级同步器的 false path 生效，第一级至第二级仍参与时序。

`pynq_uart/pynq_uart.runs/impl_1/uart_system_wrapper_drc_routed.rpt` 与 `uart_system_wrapper_methodology_drc_routed.rpt` 均记录 `Violations found: 0`。这不代表整次构建没有告警。

原 `impl_1/runme.log` 第 47 至 50 行记录 4 条 `CRITICAL WARNING: [Designutils 20-1307]`：

- `uart_baud_cdc.xdc` 第 6、10、14 行的 `if`；
- 同文件第 17 行的 `concat`。

这些命令在受管理 XDC 中不受支持。后续报告证明本次设计预期的同步器属性与 RX false path 已生效，但不能将有告警的严格检查逻辑视为已完整执行。日志还包含普通 Warning；本包保留实际日志，不宣称原构建零 Warning 或零 Critical Warning。

## 后续清理方式

AMD UG903 2023.2 说明：约束集中可加入 unmanaged Tcl，并把文件类型设为 Tcl，以使用完整 Tcl 条件和列表处理命令。未来在单独的新构建中，可将该约束脚本的 FILE_TYPE 调整为 Tcl，保留 implementation-only 和 LATE 设置，再重新实现并检查报告。

该调整本次未应用；旧 bit/hwh 和已保存记录继续对应原构建。若以后修改工程，应保存新导出版本，重新核对时序、CDC及必要的板级烟雾测试，不把旧报告当作新构建证据。

官方说明：AMD Vivado Design Suite User Guide Using Constraints UG903，2023.2，About XDC Constraints。
https://docs.amd.com/r/2023.2-English/ug903-vivado-using-constraints/About-XDC-Constraints

## 换电脑打开工程

使用 Vivado 2023.2、Zynq-7000 器件支持和 PYNQ-Z2 1.0 板卡定义，保持三个目录并列并直接打开 `pynq_uart/pynq_uart.xpr`。XPR 的 9 个有效文件引用都已找到。

XPR 仍声明外部 BoardPart 和原用户板卡库路径；板卡库文件并未随工程提供。BD 内保存了 PS/DDR/时钟等配置，不需要重新进行 Board Automation，但不能据此保证缺少板卡库的新机器能无报错重建。

仅把预编译 bit/hwh 和软件上传到 PYNQ 运行，不要求电脑安装 Vivado。

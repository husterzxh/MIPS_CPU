# 数码管显示模块
by 彭达<br></br><br></br>
<strong>函数名：</strong>`show_signal()`<br></br>
<strong>输入：</strong><br></br><br></br>
`clk`  时钟信号，上升沿有效<br></br><br></br>
`ShiftA` 位宽为2，显示功能切换的控制信号
* `ShiftA == 2'b00` 显示SyscallOut的值，即正常数据输出显示
* `ShiftA == 2'b01` 显示在内存中地址为ShiftB处的值
* `ShiftA == 2'b10` 显示PC的值
* `ShiftA == 2'b11` 显示四种不同的计数值，由ShiftB控制显示其中一种

`ShiftB` 位宽为4
* `ShiftA == 2'b01` 时代表内存地址（仅限前16位地址）
* `ShiftA == 2'b11` 时控制显示不同的计数值
	+ `ShiftB == 4'b0001` 时显示unconditional branch instruction count(UBIC)
	+ `ShiftB == 4'b0010` 时显示conditional branch instruction count(CBIC)
	+ `ShiftB == 4'b0100` 时显示conditional branch instruction success(CBIS)
	+ `ShiftB`为其他值时显示total_cycle(cycle_sum CS)

`SyscallOut`、`DataMemory`、`PC` 位宽为32<br></br><br></br>
`total_cycle`、`unconditional`、`conditional`、`conditionalsucces` 位宽为16<br></br>

<strong>输出：</strong><br></br><br></br>
`AN` 位宽为8<br></br><br></br>
`CA`、`CB`、`CC`、`CD`、`CE`、`CF`、`CG`、`DP`<br></br>

<strong>调用模块：</strong><br></br><br></br>
`sel_bits_2_mux` 四路选择器<br></br><br></br>
`H2D` 十六转十进制<br></br><br></br>
`_7Seg_Driver_Decode` 数码管信号译码
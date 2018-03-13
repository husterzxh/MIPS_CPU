# NPC
by 彭达<br></br><br></br>
函数名：NPC()<br></br>
输入：<br></br>
rst // 指令计数清零<br></br>
clk // 时钟，上升沿有效<br></br>
IM, OFFSET, PC, RegRT, RegRS<br></br>
输出：<br></br>
NextPC // 下一条指令地址<br></br>
unconditional // 无条件分支指令计数<br></br>
conditional // 有条件分支指令计数<br></br>
conditionalsucces // 有条件分支成功跳转计数<br></br>
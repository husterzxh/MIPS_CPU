# 计数器
by 彭达<br></br><br></br>
函数名：counter()<br></br>
输入：<br></br>
data<br></br>
clear	// 清零信号 高电平生效<br></br>
load	// 值为1时，将data的数据载入counter<br></br>
count	// 值为1时，counter做+1计数<br></br>
clk		// 时钟，上升沿生效<br></br>
输出：<br></br>
out 	// counter的实时值<br></br>
carry	// counter的值为max_value时置1<br></br>
可传参数：<br></br>
DATA_BITS	// data的位宽，缺省值为16<br></br>
MAX_VALUE	// max
_value，即counter最大限定值，缺省值为1<br></br>
调用格式：
```verilog
counter #(.DATA_BITS(bits), .MAX_VALUE(value))
(.data(data),
.clear(clear),
.load(load),
.count(count),
.clk(clk),
.out(out),
.carry(carry));
```

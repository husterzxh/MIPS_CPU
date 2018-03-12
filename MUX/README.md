# 多路选择器
by 彭达
## 二路选择器
函数名：sel_bits_1_mux();<br></br>
输入：d0, d1, sel<br></br>
输出：out<br></br>
可传参数：DATA_BITS(data的位宽，缺省值为2)<br></br>
调用格式：
```verilog
sel_bits_1_mux #(.DATA_BITS(bits))
(.d0(d0),
.d1(d1),
.sel(sel),
.out(out));
```
## 四路选择器
函数名：sel_bits_2_mux();<br></br>
输入：d0, d1, d2, d3, sel<br></br>
输出：out<br></br>
可传参数：DATA_BITS(data的位宽，缺省值为2)<br></br>
调用格式：
```verilog
sel_bits_2_mux #(.DATA_BITS(bits))
(.d0(d0),
.d1(d1),
.d2(d2),
.d3(d3),
.sel(sel),
.out(out));
```

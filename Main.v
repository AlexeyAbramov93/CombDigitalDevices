module Main (

input		[2:0]	addr,

//Сигнальные выводы мультиплексора 
input		[7:0]	MUX_inData,
output			MUX_outData,

//Сигнальные выводы демультиплексора 
input				DMX_inData,
output	[7:0]	DMX_outData,

//Сигнальные выводы шифратора 
input		[7:0]	CD_inData,
output	[2:0]	CD_outData,

//Сигнальные выводы дешифратора 
input		[2:0]	DC_inData,
output	[7:0]	DC_outData,

//Выводы для сумматора, суммирующих два двухбитных числа
input		[1:0]	a,			// первый операнд
input		[1:0]	b,			// второй операнд
output	[1:0]	sum,		// результат суммы двух двухбитных чисел
output			c_out	// бит переноса

);

MUX mux(
	.addr(addr),
	.inData(MUX_inData),
	.outData(MUX_outData)
);

DMX dmx(
	.addr(addr),
	.inData(DMX_inData),
	.outData(DMX_outData)
);

CD cd(
	.inData(CD_inData),
	.outData(CD_outData)
);

DC dc(
	.inData(DC_inData),
	.outData(DC_outData)
);

wire c0_out;
FullAdder adder_bit0 (
	.a(a[0]),
	.b(b[0]),
	.c_in(1'b0),
	.sum(sum[0]),
	.c_out(c0_out), 
);

FullAdder adder_bit1 (
	.a(a[1]),
	.b(b[1]),
	.c_in(c0_out),
	.sum(sum[1]),
	.c_out(c_out), 
);

endmodule

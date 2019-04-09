module Main (

input		[2:0]	addr,

//Сигнальные выводы мультиплексора 
input		[7:0]	MUX_inData,
output			MUX_outData,

//Сигнальные выводы демультиплексора 
input				DMX_inData,
output	[7:0]	DMX_outData

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

endmodule

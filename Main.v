module Main (

input	[2:0]	addr,
input	[7:0] inData,

output  outData

);

MUX mux(
	.addr(addr),
	.inData(inData),
	.outData(outData)
);

endmodule

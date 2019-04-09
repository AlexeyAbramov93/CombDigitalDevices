//Mультиплексор — устройство, имеющее несколько сигнальных входов, 
//один или более управляющих входов и один выход. Мультиплексор позволяет 
//передать сигнал с одного из входов на выход; при этом выбор желаемого 
//входа осуществляется подачей соответствующей комбинации управляющих сигналов

module MUX (

//управляющий вход
input	[2:0]	addr,

//сигнальные входа
input	[7:0] inData,

//выходной сигнал мультиплексора
output reg outData

);

always @*
	case (addr[2:0])	
		3'b000 : outData = inData[0];
		3'b001 : outData = inData[1];
		3'b010 : outData = inData[2];
		3'b011 : outData = inData[3];
		3'b100 : outData = inData[4];
		3'b101 : outData = inData[5];
		3'b110 : outData = inData[6];
		3'b111 : outData = inData[7];
	endcase

endmodule

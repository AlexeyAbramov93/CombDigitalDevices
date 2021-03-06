// Дешифратор — комбинационное устройство, которое преобразуют параллельный 
// двоичный код в разные системы счисления (десятичную, шестнадцатиричную и пр.).

module DC (

//входной двоичный код
input	[2:0] inData,

//выходной позиционный десятичный сигнал дешифратора
output reg [7:0] outData

);

always @(inData) begin
	outData = 8'b00000001 << inData;
/*
	case (inData[2:0])	
		3'b000 :	outData = 8'b00000001;
		3'b001 :	outData = 8'b00000010;
		3'b010 : outData = 8'b00000100;
		3'b011 :	outData = 8'b00001000;
		3'b100 :	outData = 8'b00010000;
		3'b101 :	outData = 8'b00100000;
		3'b110 :	outData = 8'b01000000;
		3'b111 :	outData = 8'b10000000;			
	endcase
*/
end
	
endmodule

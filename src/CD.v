// Шифратор — это комбинационное устройство, преобразующее десятичные числа 
// в двоичную систему счисления, причем каждому входу может быть поставлено 
// в соответствие десятичное число, а набор выходных логических сигналов 
// соответствует определенному двоичному коду. 
// Шифратор иногда называют «кодером» (от англ. coder) и используют, например, 
// для перевода десятичных чисел, набранных на клавиатуре кнопочного пульта 
// управления, в двоичные числа.


module CD (

//сигнальные входа
input	[7:0] inData,

//выходной сигнал мультиплексора
output reg [2:0] outData

);

always @(inData) begin

		case (inData[7:0])	
			8'b00000001 : outData = 3'b000;
			8'b00000010 : outData = 3'b001;
			8'b00000100 : outData = 3'b010;
			8'b00001000 : outData = 3'b011;
			8'b00010000 : outData = 3'b100;
			8'b00100000 : outData = 3'b101;
			8'b01000000 : outData = 3'b110;
			8'b10000000 : outData = 3'b111;			
		endcase	
end
	
endmodule

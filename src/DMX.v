// Демультиплексор — это логическое устройство, предназначенное для 
// переключения сигнала с одного информационного входа на один из 
// информационных выходов. Таким образом, демультиплексор в 
// функциональном отношении противоположен мультиплексору. 

module DMX (

//управляющий вход
input	[2:0]	addr,

//сигнальные входа
input	inData,

//выходной сигнал демультиплексора
output reg [7:0] outData

);

always @* begin
	if	(inData) begin
		outData = 0;
		case (addr[2:0])	
			3'b000 : outData[0] = inData;
			3'b001 : outData[1] = inData;
			3'b010 : outData[2] = inData;
			3'b011 : outData[3] = inData;
			3'b100 : outData[4] = inData;
			3'b101 : outData[5] = inData;
			3'b110 : outData[6] = inData;
			3'b111 : outData[7] = inData;
		endcase	
	end
	else
		outData=0;
end	
	
endmodule

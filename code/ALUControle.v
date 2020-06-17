module ALUControle (ALUOp, Function, ALUControle);

	input [1:0] ALUOp;
	input [5:0] Function;
	output reg [3:0] ALUControle;

	always @(ALUOp or Function) begin
	if(ALUOp == 0)
		ALUControle = 2;	//LW e SW -> add
	else if(ALUOp == 1)
		ALUControle = 6;	//branch -> sub
	else
		case(Function)
			32: ALUControle = 2; 	//add
			34: ALUControle = 6; 	//sub
			36: ALUControle = 0; 	//and
			37: ALUControle = 1; 	//or
			39: ALUControle = 12; 	//nor
			42: ALUControle = 7; 	//slt
			default: ALUControle = 10; //estado inválido
		endcase
	end
endmodule

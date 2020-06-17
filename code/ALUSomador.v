module ALUSomador(PC, Deslocamento, DesvioPC);

	input wire [31:0] PC;
	input wire [31:0] Deslocamento;

	output reg [31:0] DesvioPC;

	always @(*) begin
		DesvioPC = PC + Deslocamento;
	end
endmodule

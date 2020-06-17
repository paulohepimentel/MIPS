module MuxPC (ProxPC, DesvioPC, Desvio, PC1);

	input wire [31:0] PC1, DesvioPC;
	input wire Desvio;

	output reg [31:0] ProxPC;

	always @(*) begin
		case (Desvio)
			0: ProxPC = PC1;
			1: ProxPC = DesvioPC;
		endcase
	end
endmodule

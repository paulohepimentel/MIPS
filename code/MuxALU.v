module MuxALU (ALUSrc, Dado2, SExtendido, B);

	input wire ALUSrc;
	input wire [31:0] Dado2, SExtendido;

	output reg [31:0] B;

	always @(ALUSrc or Dado2 or SExtendido) begin
		case (ALUSrc)
			0: B = Dado2;
			1: B = SExtendido;
		endcase
	end
endmodule

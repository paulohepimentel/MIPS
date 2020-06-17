module D2Esquerda (SExtendido, Deslocamento);

	input wire [31:0] SExtendido;
	output reg [31:0] Deslocamento;

	always @(SExtendido) begin
		Deslocamento = SExtendido << 2;
	end

endmodule

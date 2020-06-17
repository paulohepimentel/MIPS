module MuxMemoriaDados (MemtoReg, DadosLeitura, ResultadoALU, EscreveDado);

	input wire MemtoReg;
	input wire [31:0] DadosLeitura, ResultadoALU;

	output reg [31:0] EscreveDado; //Banco de registradores

	always @(MemtoReg or DadosLeitura or ResultadoALU) begin
		case (MemtoReg)
			0: EscreveDado = ResultadoALU;
			1: EscreveDado = DadosLeitura;
		endcase
	end
endmodule

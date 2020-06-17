module MuxBancoRegistradores (RegDst, Instrucao20_16, Instrucao15_11, EscreveReg);

	input wire RegDst;
	input wire [4:0] Instrucao20_16, Instrucao15_11; //Memoria de Instrucoes

	output reg [4:0] EscreveReg; //Banco de Registradores

	always @(RegDst or Instrucao20_16 or Instrucao15_11) begin
		case (RegDst)
			0: EscreveReg = Instrucao20_16;
			1: EscreveReg = Instrucao15_11;
		endcase
	end
endmodule

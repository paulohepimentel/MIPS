module ALU (ALUControle, A, B, ResultadoALU, Zero);

	input wire [3:0] ALUControle;
	input wire [31:0] A; //Saida do BancoDeRegistradores
	input wire [31:0] B; //Saida do MuxALU

	output reg [31:0] ResultadoALU;
	output reg Zero;

	always @(ALUControle or A or B) begin
		case (ALUControle)
			0: begin
				ResultadoALU = A & B;
				Zero = 0;
			end
			1: begin
				ResultadoALU = A | B;
				Zero = 0;
			end
			2: begin
				ResultadoALU = A + B;
				Zero = 0;
			end
			6: begin
				ResultadoALU = A - B;
				if(ResultadoALU == 0)
					Zero = 1;
			end
			7: begin
				ResultadoALU = A < B ? 1:0;
				Zero = 0;
			end
			12: begin
				ResultadoALU = ~(A | B);
				Zero = 0;
			end

			default: begin
				ResultadoALU = 0;
				Zero = 0;
			end
		endcase
	end
endmodule

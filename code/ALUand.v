module ALUand (Branch, Zero, Desvio);

  input wire Branch, Zero;
	output reg Desvio;

	always @(*) begin
		Desvio = Branch && Zero;
	end

endmodule

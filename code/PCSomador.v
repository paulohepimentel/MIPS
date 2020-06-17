module PCSomador (PC, PC1);

  input wire [31:0] PC;
  output reg [31:0] PC1;

  always @ (PC) begin
    PC1 = PC+1; //Proxima instrução -> Indice do vetor de instruções
  end
endmodule

module ExtensorSinal (SInicial, SExtendido);

  input wire [15:0] SInicial;
  output reg [31:0] SExtendido;

  always @(SInicial) begin
      SExtendido[15:0]  = SInicial[15:0];
      SExtendido[31:16] = {16{SInicial[15]}};
    end
endmodule

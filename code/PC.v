module PC (PC, Clock, ProxPC, reset);

  input wire Clock;
  input wire[31:0] ProxPC;
  input wire reset;
  output reg [31:0] PC;

  initial begin
    PC = 0;
  end

  always @ (posedge Clock) begin
		if(reset)begin 
			PC <= 32'b0;
		end
		else begin
			PC = ProxPC;
  end
  end
endmodule

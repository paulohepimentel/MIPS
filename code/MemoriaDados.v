module MemoriaDados (Clock,Endereco, EscreveDado, WriteMem, ReadMem, DadosLeitura);

  reg [31:0] Memoria [15:0]; //Memória de 16 endereços de 32 bits cada um

  input wire[31:0] Endereco, EscreveDado;
  input wire Clock, WriteMem, ReadMem;

  output reg [31:0] DadosLeitura;

  initial begin //Inicialização
  	Memoria[00] = 32'b0;
    Memoria[01] = 32'b0;
    Memoria[02] = 32'b0;
    Memoria[03] = 32'b0;
    Memoria[04] = 32'b0;
    Memoria[05] = 32'b0;
    Memoria[06] = 32'b0;
    Memoria[07] = 32'b0;
    Memoria[08] = 32'b0;
    Memoria[09] = 32'b0;
    Memoria[10] = 32'b0;
    Memoria[11] = 32'b0;
    Memoria[12] = 32'b0;
    Memoria[13] = 32'b0;
    Memoria[14] = 32'b0;
    Memoria[15] = 32'b0;
  end

	always @(posedge Clock) begin
		if(WriteMem == 1 && ReadMem == 0) begin
			Memoria[Endereco] = EscreveDado;
		end
		if(WriteMem == 0 && ReadMem == 1) begin
			DadosLeitura = Memoria[Endereco];
		end
	end
endmodule

module MemoriaInstrucoes (PC, Instrucao);

  reg [31:0] ListaInstrucoes [11:0]; //Memória de 10 instruções de 32 bits cada um
  input wire [31:0] PC;
  output reg [31:0] Instrucao;

  initial begin

    ListaInstrucoes[0] = 32'b00000010000100010100000000100000; //add $t0, $s0, $s1
    ListaInstrucoes[1] = 32'b00000010011101000100100000100000; //Instrução da Doc
    ListaInstrucoes[2] = 32'b00000001000010011000000000100000; //Instrução da Doc
    ListaInstrucoes[3] = 32'b00000010001100000100000000100010; //sub $t0, $s1, $s0
    ListaInstrucoes[4] = 32'b00000010000100110101000000100000; //add $t2, $s0, $s3
    ListaInstrucoes[5] = 32'b00000010011100000101000000100010; //sub $t2, $s3, $s0
    ListaInstrucoes[6] = 32'b10001101001100010000000000001010; //lw $t1, 10($s1)
    ListaInstrucoes[7] = 32'b10101101000100000000000000001010; //sw $t0, 10($s0)
    ListaInstrucoes[8] = 32'b10001101010100100000000000001010; //lw $t2, 10($s2)
    ListaInstrucoes[9] = 32'b10101101010100100000000000001010; //sw $t2, 10($s2)
    ListaInstrucoes[10] = 32'b00010010000100010000000000000010; //beq $s0, $s1, 2
    ListaInstrucoes[11] = 32'b00010010000100000000000000000010; //beq $s0, $s0, 2
  end

  always @(PC) begin
    Instrucao = ListaInstrucoes[PC];
    if(PC > 11)
      Instrucao = ListaInstrucoes[11];
  end
endmodule

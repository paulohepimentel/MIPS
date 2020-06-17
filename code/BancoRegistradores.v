module BancoRegistradores (LeReg1, LeReg2, EscreveReg, EscreveDado, WriteReg, Dado1, Dado2, Clock);

  reg [31:0] Registrador [31:0]; //32 Registradores de tamanho 32 bits

  input wire [4:0] LeReg1, LeReg2, EscreveReg; //Numero dos Registrador para leitura e escrita
  input wire [31:0] EscreveDado;
  input wire Clock, WriteReg;

  output [31:0] Dado1, Dado2;

  initial begin
    Registrador[0] = 0; //$zero
    Registrador[1] = 1; //$at
    Registrador[2] = 2; //$v0
    Registrador[3] = 3; //$v0
    Registrador[4] = 4; //$a0
    Registrador[5] = 5; //$a1
    Registrador[6] = 6; //$a2
    Registrador[7] = 7; //$a3
    Registrador[8] = 8; //$t0
    Registrador[9] = 9; //$t1
    Registrador[10] = 10; //$t2
    Registrador[11] = 11; //$t3
    Registrador[12] = 12; //$t4
    Registrador[13] = 13; //$t5
    Registrador[14] = 14; //$t6
    Registrador[15] = 15; //$t7
    Registrador[16] = 16; //$s0
    Registrador[17] = 17; //$s1
    Registrador[18] = 18; //$s2
    Registrador[19] = 19; //$s3
    Registrador[20] = 20; //$s4
    Registrador[21] = 21; //$s5
    Registrador[22] = 22; //$s6
    Registrador[23] = 23; //$s7
    Registrador[24] = 24; //$t8
    Registrador[25] = 25; //$t9
    Registrador[26] = 26; //$k0
    Registrador[27] = 27; //$k1
    Registrador[28] = 28; //$gp
    Registrador[29] = 29; //$sp
    Registrador[30] = 30; //$fp
    Registrador[31] = 31; //$ra
  end

  assign Dado1 = Registrador[LeReg1];
  assign Dado2 = Registrador[LeReg2];

  always @(posedge Clock) begin
    if (WriteReg == 1)
      Registrador[EscreveReg] = EscreveDado;
  end
endmodule


//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module MIPS(

	//////////// CLOCK //////////
	input 		          		CLOCK_50,
	input 		          		CLOCK2_50,
	input 		          		CLOCK3_50,

	//////////// Sma //////////
	input 		          		SMA_CLKIN,
	output		          		SMA_CLKOUT,

	//////////// LED //////////
	output		     [8:0]		LEDG,
	output		    [17:0]		LEDR,

	//////////// KEY //////////
	input 		     [3:0]		KEY,

	//////////// EX_IO //////////
	inout 		     [6:0]		EX_IO,

	//////////// SW //////////
	input 		    [17:0]		SW,

	//////////// SEG7 //////////
	output		     [6:0]		HEX0,
	output		     [6:0]		HEX1,
	output		     [6:0]		HEX2,
	output		     [6:0]		HEX3,
	output		     [6:0]		HEX4,
	output		     [6:0]		HEX5,
	output		     [6:0]		HEX6,
	output		     [6:0]		HEX7,

	//////////// LCD //////////
	output		          		LCD_BLON,
	inout 		     [7:0]		LCD_DATA,
	output		          		LCD_EN,
	output		          		LCD_ON,
	output		          		LCD_RS,
	output		          		LCD_RW,

	//////////// RS232 //////////
	input 		          		UART_CTS,
	output		          		UART_RTS,
	input 		          		UART_RXD,
	output		          		UART_TXD,

	//////////// PS2 for Keyboard and Mouse //////////
	inout 		          		PS2_CLK,
	inout 		          		PS2_CLK2,
	inout 		          		PS2_DAT,
	inout 		          		PS2_DAT2,

	//////////// SDCARD //////////
	output		          		SD_CLK,
	inout 		          		SD_CMD,
	inout 		     [3:0]		SD_DAT,
	input 		          		SD_WP_N,

	//////////// VGA //////////
	output		     [7:0]		VGA_B,
	output		          		VGA_BLANK_N,
	output		          		VGA_CLK,
	output		     [7:0]		VGA_G,
	output		          		VGA_HS,
	output		     [7:0]		VGA_R,
	output		          		VGA_SYNC_N,
	output		          		VGA_VS,

	//////////// Audio //////////
	input 		          		AUD_ADCDAT,
	inout 		          		AUD_ADCLRCK,
	inout 		          		AUD_BCLK,
	output		          		AUD_DACDAT,
	inout 		          		AUD_DACLRCK,
	output		          		AUD_XCK,

	//////////// I2C for EEPROM //////////
	output		          		EEP_I2C_SCLK,
	inout 		          		EEP_I2C_SDAT,

	//////////// I2C for Audio Tv-Decoder  //////////
	output		          		I2C_SCLK,
	inout 		          		I2C_SDAT,

	//////////// Ethernet 0 //////////
	output		          		ENET0_GTX_CLK,
	input 		          		ENET0_INT_N,
	input 		          		ENET0_LINK100,
	output		          		ENET0_MDC,
	inout 		          		ENET0_MDIO,
	output		          		ENET0_RST_N,
	input 		          		ENET0_RX_CLK,
	input 		          		ENET0_RX_COL,
	input 		          		ENET0_RX_CRS,
	input 		     [3:0]		ENET0_RX_DATA,
	input 		          		ENET0_RX_DV,
	input 		          		ENET0_RX_ER,
	input 		          		ENET0_TX_CLK,
	output		     [3:0]		ENET0_TX_DATA,
	output		          		ENET0_TX_EN,
	output		          		ENET0_TX_ER,
	input 		          		ENETCLK_25,

	//////////// Ethernet 1 //////////
	output		          		ENET1_GTX_CLK,
	input 		          		ENET1_INT_N,
	input 		          		ENET1_LINK100,
	output		          		ENET1_MDC,
	inout 		          		ENET1_MDIO,
	output		          		ENET1_RST_N,
	input 		          		ENET1_RX_CLK,
	input 		          		ENET1_RX_COL,
	input 		          		ENET1_RX_CRS,
	input 		     [3:0]		ENET1_RX_DATA,
	input 		          		ENET1_RX_DV,
	input 		          		ENET1_RX_ER,
	input 		          		ENET1_TX_CLK,
	output		     [3:0]		ENET1_TX_DATA,
	output		          		ENET1_TX_EN,
	output		          		ENET1_TX_ER,

	//////////// TV Decoder //////////
	input 		          		TD_CLK27,
	input 		     [7:0]		TD_DATA,
	input 		          		TD_HS,
	output		          		TD_RESET_N,
	input 		          		TD_VS,

	//////////// USB 2.0 OTG (Cypress CY7C67200) //////////
	output		     [1:0]		OTG_ADDR,
	output		          		OTG_CS_N,
	inout 		    [15:0]		OTG_DATA,
	input 		          		OTG_INT,
	output		          		OTG_RD_N,
	output		          		OTG_RST_N,
	output		          		OTG_WE_N,

	//////////// IR Receiver //////////
	input 		          		IRDA_RXD,

	//////////// SDRAM //////////
	output		    [12:0]		DRAM_ADDR,
	output		     [1:0]		DRAM_BA,
	output		          		DRAM_CAS_N,
	output		          		DRAM_CKE,
	output		          		DRAM_CLK,
	output		          		DRAM_CS_N,
	inout 		    [31:0]		DRAM_DQ,
	output		     [3:0]		DRAM_DQM,
	output		          		DRAM_RAS_N,
	output		          		DRAM_WE_N,

	//////////// SRAM //////////
	output		    [19:0]		SRAM_ADDR,
	output		          		SRAM_CE_N,
	inout 		    [15:0]		SRAM_DQ,
	output		          		SRAM_LB_N,
	output		          		SRAM_OE_N,
	output		          		SRAM_UB_N,
	output		          		SRAM_WE_N,

	//////////// Flash //////////
	output		    [22:0]		FL_ADDR,
	output		          		FL_CE_N,
	inout 		     [7:0]		FL_DQ,
	output		          		FL_OE_N,
	output		          		FL_RST_N,
	input 		          		FL_RY,
	output		          		FL_WE_N,
	output		          		FL_WP_N
);



//=======================================================
//  REG/WIRE declarations
//=======================================================

  reg[31:0] i;
  reg clk;
  //Módulo PC
  wire [31:0] pc, proxPC, pc1, instrucao;
  //Módulo UnidadeControle
  wire [1:0] aluOp;
  wire regDst, aluSrc, memtoReg, writeReg, readMem, writeMem, branch;
  //Módulo BancoRegistradores
  wire [4:0] escreveReg;
  wire [31:0] escreveDado, dado1, dado2, sExtendido;
  //Módulo ALU
  wire zero, desvio;
  wire [3:0] AluControle;
  wire [31:0] entrada2ALU, resultadoALU;
  //Módulo MemoriaDados
  wire [31:0] dadosLeitura;
  //Módulos para desvios condicionais
  wire [31:0] deslocamento, desvioPC;
  //FPGA
  reg [3:0] displaysIn[7:0];
  reg reset;
	



//=======================================================
//  Structural coding
//=======================================================
  
	 decoder display0(
	 	.in(displaysIn[0]),
	 	.out(HEX0)
	 );
	
	 decoder display1(
	 	.in(displaysIn[1]),
	 	.out(HEX1)
	 );
	
	 decoder display2(
	 	.in(displaysIn[2]),
	 	.out(HEX2)
	 );
	
	 decoder display3(
	 	.in(displaysIn[3]),
	 	.out(HEX3)
	 );
	
	
	 decoder display4(
	 	.in(displaysIn[4]),
	 	.out(HEX4)
	 );
	
	
	 decoder display5(
	 	.in(displaysIn[5]),
	 	.out(HEX5)
	 );
	 
	 decoder display6(
	 	.in(displaysIn[6]),
	 	.out(HEX6)
	 );
	 
	 decoder display7(
	 	.in(displaysIn[7]),
	 	.out(HEX7)
	 );
	 
 always@(SW[17]) begin
  if(SW[17] == 1)begin
			displaysIn[0] <= resultadoALU[3:0];
			displaysIn[1] <= resultadoALU[7:4];
			displaysIn[2] <= resultadoALU[11:8];
			displaysIn[3] <= resultadoALU[15:12];
			displaysIn[4] <= resultadoALU[19:16];
			displaysIn[5] <= resultadoALU[23:20];
			displaysIn[6] <= resultadoALU[27:24];
			displaysIn[7] <= resultadoALU[31:28];
		end
end
		//clock
	always@(posedge CLOCK_50)begin
		
		if(SW[0] == 1)begin
			i = i+1;
			if(i == 50000000)begin
				clk = 1;
			end
			else if(i == 100000000)begin
				clk = 0;
				i=0;
			end
		end
	
	end

  //Módulo PC
  PC ProgamCounter (
  .PC(pc), 
  .Clock(clk), 
  .ProxPC(proxPC),
  .reset(SW[7])
  );
  
  PCSomador PCS(
  .PC(pc), 
  .PC1(pc1)
  );
  
  MemoriaInstrucoes MI (
  .PC(pc), 
  .Instrucao(instrucao)
  );
  
  //Módulo UnidadeControle
  UnidadeControle UC (
  .Opcode(instrucao[31:26]), 
  .RegDst(regDst), 
  .ALUSrc(aluSrc), 
  .MemtoReg(memtoReg), 
  .WriteReg(writeReg), 
  .ReadMem(readMem), 
  .WriteMem(writeMem), 
  .Branch(branch), 
  .ALUOp(aluOp)
  );
  //Módulo BancoRegistradores
  MuxBancoRegistradores MBR (
  .RegDst(regDst), 
  .Instrucao20_16(instrucao[20:16]), 
  .Instrucao15_11(instrucao[15:11]), 
  .EscreveReg(escreveReg)
  );
  
  BancoRegistradores BR (
  .LeReg1(instrucao[25:21]), 
  .LeReg2(instrucao[20:16]), 
  .EscreveReg(escreveReg), 
  .EscreveDado(escreveDado), 
  .WriteReg(writeReg), 
  .Dado1(dado1), 
  .Dado2(dado2), 
  .Clock(clk)
  );
  
  ExtensorSinal ES (
  .SInicial(instrucao[15:0]), 
  .SExtendido(sExtendido)
  );
  
  //Módulo ALU
  MuxALU MuxAlu (
  .ALUSrc(aluSrc), 
  .Dado2(dado2), 
  .SExtendido(sExtendido), 
  .B(entrada2ALU)
  );
  
  ALUControle ALUCtrl (
  .ALUOp(aluOp), 
  .Function(instrucao[5:0]),
  .ALUControle(AluControle)
  );
  
  ALU Alu (
  .ALUControle(AluControle),
  .A(dado1), 
  .B(entrada2ALU), 
  .ResultadoALU(resultadoALU), 
  .Zero(zero)
  );
  
  ALUand And (
  .Branch(branch),
  .Zero(zero),
  .Desvio(desvio)
  );
  //Módulo MemoriaDados
  MemoriaDados MD(
  .Endereco(resultadoALU),
  .EscreveDado(dado2), 
  .WriteMem(writeMem), 
  .ReadMem(readMem), 
  .DadosLeitura(dadosLeitura)
  );
  
  MuxMemoriaDados MuxMD (
  .MemtoReg(memtoReg),
  .DadosLeitura(dadosLeitura),
  .ResultadoALU(resultadoALU),
  .EscreveDado(escreveDado)
  );
  
  //Módulos para desvios condicionais
  D2Esquerda D2(
  .SExtendido(sExtendido),
  .Deslocamento(deslocamento)
  );
  
  ALUSomador AluSomador(
  .PC(pc1),
  .Deslocamento(deslocamento),
  .DesvioPC(desvioPC)
  );
  
  MuxPC MPC(
  .ProxPC(proxPC), 
  .DesvioPC(desvioPC), 
  .Desvio(desvio), 
  .PC1(pc1)
  );

endmodule
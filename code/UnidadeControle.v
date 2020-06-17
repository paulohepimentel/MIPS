module UnidadeControle (Opcode, RegDst, ALUSrc, MemtoReg, WriteReg, ReadMem, WriteMem, Branch, ALUOp);

  input wire [5:0] Opcode;
  output reg RegDst, ALUSrc, MemtoReg, WriteReg, ReadMem, WriteMem, Branch;
  output reg [1:0] ALUOp;

  always @(Opcode) begin
    case (Opcode)

      //Tipo R
      0: begin
        RegDst = 1; ALUSrc = 0; MemtoReg = 0; WriteReg = 1; ReadMem = 1;
        WriteMem = 0; Branch = 0; ALUOp[1] = 1; ALUOp[0] = 0;
      end

      //Instrução lw
      35: begin
        RegDst = 0; ALUSrc = 1; MemtoReg = 1; WriteReg = 1; ReadMem = 1;
        WriteMem = 0; Branch = 0; ALUOp[1] = 0; ALUOp[0] = 0;
      end

      //Instrução sw
      43: begin
        RegDst = 'bx; ALUSrc = 1; MemtoReg = 'bx; WriteReg = 0; ReadMem = 0;
        WriteMem = 1; Branch = 0; ALUOp[1] = 0; ALUOp[0] = 0;
      end
      //Instrução beq
      4: begin
        RegDst = 'bx; ALUSrc = 0; MemtoReg = 'bx; WriteReg = 0; ReadMem = 0;
        WriteMem = 0; Branch = 1; ALUOp[1] = 0; ALUOp[0] = 1;
      end
		endcase
	end

endmodule

module alu(
    input  logic [3:0]   alu_fn,
    input  logic [31:0]  operandA,
    input  logic [31:0]  operandB,

    output logic [31:0]  result
);

	always_comb
	  begin
		// npc logic
		unique case(alu_fn)
			5'b00000: result = $signed(operandA) + $signed(operandB);
			5'b00001: result = $signed(operandA) << $signed(operandB);
			5'b00010: result = ($signed(operandA) < $signed(operandB));
			5'b00011: result = (operandA < operandB); 
			5'b00100: result = $signed(operandA) ^ $signed(operandB);
			5'b00101: result = $signed(operandA) >> $signed(operandB);
			5'b00110: result = $signed(operandA) | $signed(operandB);
			5'b00111: result = $signed(operandA) & $signed(operandB);
			5'b01000: result = $signed(operandA) - $signed(operandB);
			//5'b01001: result = 0;
			//5'b01010: result = 0;
			//5'b01011: result = 0;
			//5'b01100: result = 0;
			5'b01101: result = $signed(operandA) >>> $signed(operandB);
			//5'b01110: result = 0;
			//5'b01111: result = 0;
			//5'b10000: result = 0;
			//5'b10001: result = 0;
			//5'b10010: result = 0;
			//5'b10011: result = 0;
			//5'b10100: result = 0;
			//5'b10101: result = 0;
			//5'b10110: result = 0;
			//5'b10111: result = 0;
			//5'b11000: result = 0;
			//5'b11001: result = 0;
			//5'b11010: result = 0;
			//5'b11011: result = 0;
			//5'b11100: result = 0;
			//5'b11101: result = 0;
			//5'b11110: result = 0;
			//5'b11111: result = 0;
			default: result = 0;
		endcase
	  end

endmodule



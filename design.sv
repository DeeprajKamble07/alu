// Design for 8 bit alu
module alu(input [7:0] a,b,input [2:0] ctrl, output reg [7:0] result);
  always@(a or b or ctrl) 
    begin
      case(ctrl)
        3'b000: result=a+b;
        3'b001: result=a-b;
        3'b010: result=a&b;
        3'b011: result=a|b;
        3'b100: result=a^b;
        3'b101: result=a>>2;
        3'b110: result=a<<2;
      endcase
    end
endmodule

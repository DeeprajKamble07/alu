// testbench for 8bit alu

// testbench for 8 bit alu
module tb;
  reg [7:0]a,b;
  reg [2:0]ctrl;
  wire[7:0] result;
  alu dut(a,b,ctrl,result);
  initial begin
    a=8'd24;b=8'd20;
    #2 ctrl=3'b000;
    #2 ctrl=3'b001;
    #2 ctrl=3'b010;
    #2 ctrl=3'b011;
    #2 ctrl=3'b100;
    #2 ctrl=3'b101;
    #2 ctrl=3'b110;
  end
  initial begin
    $monitor("[%0t] a=%0d(%08b) b=%0d(%08b) ctrl=%0d result=%0d(%08b)",$time,a,a,b,b,ctrl,result,result);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
  end
endmodule

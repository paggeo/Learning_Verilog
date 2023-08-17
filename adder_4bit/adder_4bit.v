// This is test for verilog 
 module adder_4bit 
 (
  input [3:0] a , 
  input [3:0] b, 
  input c_in ,
  output reg  c_out ,
  output reg [3:0] sum
 ) ;

 always @ (a , b , c_in) begin 
   {c_out,sum} = a + b +c_in;
end 
endmodule

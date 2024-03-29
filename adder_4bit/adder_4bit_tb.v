module adder_4bit_tb; 
  reg [3:0] a ;
  reg [3:0] b ;
  reg c_in ; 
  wire c_out ;
  wire [3:0] sum;
  integer i;

  adder_4bit testadder (.a(a),
                    .b(b),
                    .c_in(c_in),
                    .c_out(c_out),
                    .sum(sum)
                  );

      initial begin  
        a<= 0 ;
        b<= 0;
        c_in<= 0;

        for ( i =0;i<5 ;i++) begin 
          #10 a <= i;
              b <= i;
              c_in <= 0;
              $display("Time=%5dt, a= 0x%04d,b=0x%04d,c_in= 0x%d,c_out= 0x%d,sum=0x%04d",$time,a,b,c_in,c_out,sum);
        end 
      end 
endmodule

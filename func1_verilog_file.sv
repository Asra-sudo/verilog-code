//function implementation y = (ABC+D)'

module func1 (y,a,b,c,d);
  parameter N=2 ;
   [N-1:0]a,b,c,d;
  output [N-1:0]y;
  
  assign y = ~((a & b & c) | d) 
  
endmodule



// testbench of above program

// testbench of func1

module stimulus;
  reg [1:0]a,b,c,d;
  wire [1:0]y;
  
  func1 f1(y,a,b,c,d);
  
  initial
    begin
      a = 2'b00; b= 2'b00; c=2'b00; d=2'b00;
      #10 a = 2'b00; b= 2'b00; c=2'b00; d=2'b11;
      #20 a = 2'b11; b= 2'b11; c=2'b11; d=2'b00;
      
      #50 $finish;
      
    end
  
  initial
  
    $monitor($time, "output y = %d", y);
   
  
endmodule



module tb();
  reg a,b;
  wire greater,lesser,equal;
  
  comparator dut(.a(a),.b(b),.greater(greater),
                 .lesser(lesser),.equal(equal));//port-mapping
  
  initial begin
    repeat(4)begin
    a = $urandom;
    b = $urandom;//$urandom to generate unsigned random numbers.
    
    #10;
      //provided delay so that the value will get updated
    $display("a = %b, b = %b, greater = %b, lesser = %b, equal = %b",a,b,greater,lesser,equal);
      //we have placed $display inside repeat loop so that we can see iteration for 4 times and thus see the result  
    end
  end
  
  initial begin
   // $monitor("a = %b, b = %b, greater = %b, lesser = %b, equal = %b",a,b,greater,lesser,equal);
    // $monitor will update the final value 
    #100;
    $finish;
  end
  
  
endmodule

//////////////////////////////////////////////////////////////////
//  Author Name: Jyoti Prasad Kurmi                             //
//  Project: One-bit comparator.                                //
//  create date: 4/19/2023                                      //                      
//                                                              //
//////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
//1 bit comparator ,in 1-bit comparator we provide two 1 bit value and it will get compared that it is if greater, lesser or equal to
///////////////////////////////////////////////////////////////////////////////////////////////////////

module mux4X1( in0,in1,in2,in3,s1,s0,out);
input in0,in1,in2,in3;
input   s1,s0;
output  out;
assign out = s1 ? (s0 ? in3 : in2) : (s0 ? in1 : in0);
  //if sel1 is 1 then s0 will be selected and if s0 is 0 then in0 will be selected else in1
  //if sel1 is 0 then s0 will be selected and if s0 is 0 then in2 will be selected else in3

endmodule


module comparator(a,b,greater,lesser,equal);
input a,b;
output  greater,lesser,equal;
    //important to provide instance name or else will get error
  //(vopt-13259) Missing instance name in instantiation of module/program/interface


mux4X1 mux1(1'b0,1'b1,1'b0,1'b0,a,b,lesser);
mux4X1 mux2(1'b1,1'b0,1'b0,1'b1,a,b,equal);
mux4X1 mux3(1'b0,1'b0,1'b1,1'b0,a,b,greater);

endmodule

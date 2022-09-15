`timescale 1ns / 1ps


module mux_tb;
wire [3:0] test_I0,test_I1,test_I2,test_I3,test_I4,test_I5,test_I6,test_I7,test_Y;
reg test_S2, test_S1, test_S0;
mux uut( .I0(test_I0),.I1(test_I1),.I2(test_I2),.I3(test_I3),.I4(test_I4),.I5(test_I5),.I6(test_I6),.I7(test_I7),.S2(test_S2),.S1(test_S1),.S0(test_S0),.Y(test_Y) );

initial
begin
     {test_S2, test_S1, test_S0}=3'b000;
    # 5;
     {test_S2, test_S1, test_S0}=3'b001;
    # 5;
     {test_S2, test_S1, test_S0}=3'b010;
    # 5;
     {test_S2, test_S1, test_S0}=3'b011;
    # 5;
     {test_S2, test_S1, test_S0}=3'b100;
    # 5;
     {test_S2, test_S1, test_S0}=3'b101;
    # 5;
     {test_S2, test_S1, test_S0}=3'b110;
    # 5;
     {test_S2, test_S1, test_S0}=3'b111;
    # 5;
    $stop;
end
endmodule

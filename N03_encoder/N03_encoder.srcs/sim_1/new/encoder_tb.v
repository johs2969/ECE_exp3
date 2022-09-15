`timescale 1ns / 1ps


module encoder_tb;
reg [3:0] test_D;
wire test_x, test_y, test_v;

encoder uut (.D(test_D) ,.x(test_x) ,.y(test_y) ,.v(test_v));

initial
begin
    test_D=4'b0000;
    # 5;
     test_D=4'b1000;
    # 5;
     test_D=4'b1011;
    # 5;
     test_D=4'b0101;
    # 5;
     test_D=4'b0001;
    # 5;
    $stop;
end    
endmodule

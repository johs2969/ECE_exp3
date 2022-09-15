`timescale 1ns / 1ps


module comparator_tb;
reg [3:0] test_a, test_b;
wire test_x, test_y, test_z;

comparator uut (.a(test_a), .b(test_b), .x(test_x), .y(test_y), .z(test_z));

initial
    begin
    test_a=4'b0011;
    test_b=4'b1000;
    # 5;
    test_a=4'b0111;
    test_b=4'b0001;
    # 5;
    test_a=4'b1001;
    test_b=4'b1001;
    # 5;
    test_a=4'b1011;
    test_b=4'b1111;
    # 5;
    $stop;
   end
endmodule

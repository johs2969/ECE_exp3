`timescale 1ns / 1ps

module decoder_tb;
reg test_x, test_y, test_z;
wire [7:0] test_D;

decoder uut (.x(test_x) ,.y(test_y) ,.z(test_z) ,.D(test_D));

initial
begin
    {test_x,test_y,test_z}=3'b000;
    # 5;
     {test_x,test_y,test_z}=3'b001;
    # 5;
     {test_x,test_y,test_z}=3'b010;
    # 5;
     {test_x,test_y,test_z}=3'b011;
    # 5;
     {test_x,test_y,test_z}=3'b100;
    # 5;
     {test_x,test_y,test_z}=3'b101;
    # 5;
     {test_x,test_y,test_z}=3'b110;
    # 5;
     {test_x,test_y,test_z}=3'b111;
    # 5;
    $stop;
    end
endmodule

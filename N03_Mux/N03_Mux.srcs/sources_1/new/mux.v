`timescale 1ns / 1ps


module mux(
input [3:0] I0,I1,I2,I3,I4,I5,I6,I7,
input S2,S1,S0,
output reg [3:0] Y
    );
    assign I0=4'b0000;
    assign I1=4'b0001;
    assign I2=4'b0010;
    assign I3=4'b0011;
    assign I4=4'b0100;
    assign I5=4'b0101;
    assign I6=4'b0110;
    assign I7=4'b0111;
    
    always @*
    begin
        case({S2,S1,S0})
        3'b000 : Y=I0;
        3'b001 : Y=I1;
        3'b010 : Y=I2;
        3'b011 : Y=I3;
        3'b100 : Y=I4;
        3'b101 : Y=I5;
        3'b110 : Y=I6;
        3'b111 : Y=I7;
        endcase
    end    
endmodule

`timescale 1ns / 1ps


module encoder(
input wire [3:0] D,
output reg x,y,v
    );
    
    always @*
    if(D[3]==1'b1)
    {x,y,v}=3'b111;
     else if(D[2]==1'b1)
    {x,y,v}=3'b101;
     else if(D[1]==1'b1)
    {x,y,v}=3'b011;
    else if(D[0]==1'b1) 
    {x,y,v}=3'b001;
    else
    {x,y,v}=3'bxx0;
endmodule

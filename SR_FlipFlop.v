module SR_FlipFlop (
input clk,
input s,
input r,
output reg q1,q2
);

 
   always@(posedge clk)  begin
    if(~s && ~r) begin
       q1<= q1;// memory
       q2<= q2;
    end
    else if(~s && r) begin 
         q1 <= 1'b0;// reset
         q2 <= 1'b1;
    end
    else if(s && ~r) begin 
         q1 <= 1'b1;// reset
         q2 <= 1'b0;
    end
     else if(s && r) begin 
         q1 <= 1'bx;// reset
         q2 <= 1'bx;
    end
end

endmodule
	

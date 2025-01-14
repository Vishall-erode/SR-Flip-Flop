module tb_SR_FlipFlop ;
reg clk;
reg s;
reg r;
wire q1,q2;


SR_FlipFlop  vtt (
   .clk(clk),.s(s),.r(r),.q1(q1),.q2(q2)
 );

initial begin
   forever #10 clk = ~clk;
end

initial begin 
  clk = 0; 
s = 0; 
r = 0; 
#20; s = 0; 
     r =  0; 
 #20; s = 0; r = 1; 
 #20;  s = 1; r = 0; 
 #20; s = 1; r = 1; 
 #20;  s = 0; r = 0; 
#40; $finish;
 end
initial begin
 $monitor("time= %0t|| set = %d || REset = %d || q1 = %d || q2 = %d",$time,s,r,q1,q2);
end
endmodule

     
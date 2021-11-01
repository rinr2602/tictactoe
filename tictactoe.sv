module win1(s1,s2,s3,s4,s5,s6,s7,s8,s9,wina,winb);

input logic [0:1]s1,s2,s3;
input logic [0:1]s4,s5,s6;
input logic [0:1]s7,s8,s9;

output logic wina,winb;

always

if(s1 == s2 == s3)
begin 
if(s1 == 2'b01)
wina = 1'b1;
else if(s1 == 2'b10)
winb = 1'b1;
else
begin
wina = 1'b0;
winb = 1'b0;
end
end

else if(s4 == s5 == s6)
begin 
if(s4 == 2'b01)
wina = 1'b1;
else if(s4 == 2'b10)
winb = 1'b1;
else
begin
wina = 1'b0;
winb = 1'b0;
end
end

else if(s7 == s8 == s9)
begin 
if(s7 == 2'b01)
wina = 1'b1;
else if(s7 == 2'b10)
winb = 1'b1;
else
begin
wina = 1'b0;
winb = 1'b0;
end
end

else if(s1 == s4 == s7)
begin 
if(s1 == 2'b01)
wina = 1'b1;
else if(s1 == 2'b10)
winb = 1'b1;
else
begin
wina = 1'b0;
winb = 1'b0;
end
end

else if(s2 == s5 == s8)
begin 
if(s2 == 2'b01)
wina = 1'b1;
else if(s2 == 2'b10)
winb = 1'b1;
else
begin
wina = 1'b0;
winb = 1'b0;
end
end

else if(s3 == s6 == s9)
begin 
if(s3 == 2'b01)
wina = 1'b1;
else if(s3 == 2'b10)
winb = 1'b1;
else
begin
wina = 1'b0;
winb = 1'b0;
end
end

else if(s1 == s5 == s9)
begin 
if(s1 == 2'b01)
wina = 1'b1;
else if(s1 == 2'b10)
winb = 1'b1;
else
begin
wina = 1'b0;
winb = 1'b0;
end
end

else if(s3 == s5 == s7)
begin 
if(s3 == 2'b01)
wina = 1'b1;
else if(s3 == 2'b10)
winb = 1'b1;
else
begin
wina = 1'b0;
winb = 1'b0;
end
end

else 
begin
wina = 1'b0;
winb = 1'b0;
end
endmodule

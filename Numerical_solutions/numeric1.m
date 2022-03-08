% Repeat Example 1.2. Compute the velocity to t 5 8 s, with a 
% step size of (a) 1 and (b) 0.5 s. Can you make any statement regarding the errors of the calculation based on the results?
% Numerical methods

i=0:0.5:10;
g=9.81;
m=68.1;
c=12.5;
v(1)=9.8*0.5;
for s=1:length(i)-1
    v(s+1)=v(s)+(g-c.*v(s)./m)*0.5;
end
disp(v(16));

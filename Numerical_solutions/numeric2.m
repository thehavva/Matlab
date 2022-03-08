% A storage tank contains a liquid at depth y, where y 5 0 when 
% the tank is half full. Liquid is withdrawn at a constant fl ow rate Q to 
% meet demands. The contents are resupplied at a sinusoidal rate 3Q sin^2(t)
% Use Euler’s method to solve for the depth y from t 5 0 to 10 d with 
% a step size of 0.5 d. The parameter values are A 5 1250 m2
% and Q 5 450 m3/d. Assume that the initial condition is y 5 0.

i=0:0.5:10;
Q=450;
A=1250;
y(1)=-0.18;
for s=1:length(i)-1
    y(s+1)=y(s)+(3*(Q/A).*(sin(i(s)))^2-(Q/A))*0.5;
end
disp(y);
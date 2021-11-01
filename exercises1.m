% x=0:0.1:10;
% y=2*exp(-0.2*x);
%plot(x-y);
u=1;
v=3;
a=4*u/(3*v);
b=2*v^-2/(u+v)^2;
disp(a);
disp(b);
% Create an input array from –2*pi to 2*pi
% Calculate |sin(t)|
% Plot result
t=(-2*pi):pi/10:2*pi;
z=abs(sin(t));
plot(t,z);
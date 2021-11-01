% h0 : initial height above the surface of the Earth
% v0 : initial vertical velocity
% g : gravity 

h0=input('enter initial height of the ball ');
v0=input('enter initial velocity of the ball ');

t=1:1:10;
g=9.81;
h=0.5.*g.*t.^2+v0.*t+h0;
v=g.*t+v0;

title('height and velocity as a function of t');
xlabel('veight');
ylabel('height');
plot(t,v,t,h);
%plot(v,h);
grid on;

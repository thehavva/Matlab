% If both the real and imaginary parts of the function are of interest, then the
% user has several choices. Both parts can be plotted as a function of time on
% the same axes using the statements that follow 
% y(t)=exp(-0.2t)*(cost+i*sint)
t=0:pi/20:4*pi;
y=exp(-0.2*t).*(cos(t)+i*sin(t));

figure 
plot(t,real(y),'b--','LineWidth',2);
title('\bfPlot of Complex Function Real Part vs Time');
xlabel('\bf\itt'); ylabel('\bf\ity(t)');
legend ('real');
hold on
figure 
plot(t,imag(y),'r--','LineWidth',2);
title('\bfPlot of Complex Function Imaginary Part vs Time');
xlabel('\bf\itt'); ylabel('\bf\ity(t)');
legend ('imaginary');


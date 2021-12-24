% The real part of the function can be plotted versus the imaginary
% part. If a single complex argument is supplied to the plot function, it automatically generates a plot of the real part versus the imaginary part. 
% The statements to generate this plot are shown in the following

t = 0:pi/20:4*pi;
y = exp(-0.2*t).*(cos(t)+i*sin(t));
plot(y,'b--','LineWidth',2);
title('\bfPlot of Complex Function');
xlabel('\bfReal Part');
ylabel('\bfImaginary Part');

print -djpeg complexfunc.jpeg
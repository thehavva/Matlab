% legend function
x = 0:pi/100:2*pi;
y1 = sin(2*x);
y2 = 2*cos(2*x);
plot(x,y1,'r-',x,y2,'b-');
title ('Plot of f(x) = sin(2x) and its derivative');
xlabel ('x');
ylabel ('y');
legend ('f(x)','d/dx f(x)','tl');
print -djpeg legend_func.jpeg
grid on;

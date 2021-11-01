% We will create the plot of y = x
% 2 − 10x + 15 with a dashed red line, showing the
% actual data as blue circles.

x=0:1:10;
y = x.^2 - 10.*x + 15;
plot(x,y,'r-',x,y,'bo');
title ('Plot of y = x.^2 - 10.*x + 15');
xlabel('X Axis');
ylabel('Y Axis');
grid on;
print -djpeg my_color_file.jpeg

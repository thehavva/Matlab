% To plot a data set, just create two vectors containing the x and y values to be plotted, and use the plot function.
x=0:2:10;
y=x.^2+2.*x+3;
plot(x,y);

% Titles and axis labels can be added to a plot with the title, xlabel, and
% ylabel functions.
title('Plot of y = x.^2 + 2.*x + 3');
%Each function is called with a string containing the title or label to be applied to the plot
xlabel('x');
ylabel('y');

%Grid lines can be added or removed from the plot with the grid command:
% grid on turns on grid lines, and grid off turns off grid lines.
grid on;

%The print command can be used to save a plot as a graphical image by
%specifying appropriate options and a filename.
%The general usage is
%print <options> <filename>

print -dtiff my_image.tif

% It is possible to plot multiple functions on the same graph by simply including
% more than one set of (x, y) values in the plot function.
y2=5.*x.^2+x+1;
plot(x,y,x,y2);


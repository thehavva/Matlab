%  Write an M-file to evaluate the equation y(x)  x2  3x  2 for all values
% of x between 1 and 3, in steps of 0.1. Do this twice, once with a for
% loop and once with vectors. Plot the resulting function using a 3-pointthick dashed red line.

% with for loop
x=-1:0.1:3;
for i=1:length(x)
    y(i)=x(i)^2-3*x(i)+2;
    fprintf('%d\n',y(i));
end
plot(x,y,'r--','LineWidth',3);
grid on;

% with vectors
y1=x.^2-3*x +2;
isequal(y,y1);
plot(x,y,'r--','LineWidth',3);
grid on;
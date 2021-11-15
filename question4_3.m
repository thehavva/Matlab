%  Write the MATLAB statements required to calculate and print out the
% squares of all the even integers between 0 and 50. Create a table consisting of each integer and its square, with appropriate labels over each
% column.

for i=0:2:50
    y=i*i;
    fprintf('%d is square of %d\n',y,i);
end

% alternative solution
y=0:2:20;
x=y.^2;
fprintf('Even numbers\t\tSquare of even numbers\n');
fprintf('--------------------------------------------\n');
for i=1:length(x)
    fprintf('%d\t\t\t\t%d\n',y(i),x(i));
end

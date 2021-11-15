%  A variable fun is calculated as numerator/denominator. If
% the absolute value of denominator is less than 1.0E-300, write
% “Divide by 0 error.” Otherwise, calculate and print out fun.

numerator=input('enter a number : ');
denomitor=input('enter a number : ');

if (denomitor<1.0E-300)
    error('divide by 0 error\n');
else 
    fun=numerator/denomitor;
    fprintf('fun : %3.2f\n',fun);
end

   
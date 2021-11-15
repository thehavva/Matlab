% If x is greater than or equal to zero, then assign the square root of x
% to variablesqrt_x and print out the result. Other ise, print out an
% error message about the argument of the square root function, and set
% sqrt_x to zero.
x=input('input: ');
if (x>=0)
    sqrt_x=sqrt(x);
else
    error('this message about error function of square root function');
    sqrt_x=0;
end

fprintf('sqrt_x is %3.2f\n',sqrt_x);
function y=factorialrecursive(x)
if length(x)>1
    error('Factorial can not be computed for multiple numbers!');
elseif x<0
    error('Negative number has NO factorial corresponding');
elseif x==0
    y=1;
else
    y=x*factorialrecursive(x-1);
end
end
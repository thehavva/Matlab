% Write a MATLAB program to evaluate the function y(x)=ln(1/1-x) when x<1;
x=input('enter a number : ');
if x>1
    error('not legal number!');
elseif x==1
    error('invalid number !');
elseif x<1
    y=log(1/(1-x));
    fprintf('y(x)= %4.3f\n',y);
end;

% compute square of numbers up to n which is given number from the user

n=input('enter a number: ');
square=zeros(1:n);
for ii=1:n
    square(ii)=ii^2;
end

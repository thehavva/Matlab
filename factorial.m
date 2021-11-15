% write some codes to calculate the factorial of numbers.

number=input('enter a number : ');
factorial_n=1;
for ii=1:number
    factorial_n=factorial_n*ii;
end

fprintf('%d is factorial of %d\n',factorial_n,number);

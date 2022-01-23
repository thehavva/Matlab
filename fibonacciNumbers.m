% Fibonacci Numbers The nth Fibonacci number is defined by the following recursive equation
arr(1)=1;
arr(2)=2;
z=input('enter a number : ');
ii=3;
while(ii<=z)
    arr(ii)=arr(ii-1)+arr(ii-2);
    ii=ii+1;
end
disp(arr);
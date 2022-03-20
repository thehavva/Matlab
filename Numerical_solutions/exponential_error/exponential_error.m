sum1=0;
sum2=0;
trueValue=6.737947*10^-3;
x=5;
for i=1:20
    N=(x^i)/(factorialrecursive(i))*(-1)^i;
    sum1=sum1+N;
end
value1=sum1+1;
fprintf("exponential value is %.10f\n",value1);

for j=1:20
    M=(x^j)/factorialrecursive(j);  
    sum2=sum2+M;
end
sum2=sum2+1;
value2=1/sum2;
fprintf("exponential value is %.10f\n",value2);
error1=abs(((trueValue-value1)/trueValue)*100);
error2=abs(((trueValue-value2)/trueValue)*100);
fprintf("First error: %7.6f\nSecond error: %7.6f\n",error1,error2);
if error1>error2
    fprintf("second method gives better and closer result!\n");
else
    fprintf("first method gives better and closer result!\n")
end

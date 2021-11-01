% Write a program to calculate the hyperbolic cosine of a user-supplied value x
x=0:1:10;
y1=exp(x)./2 + exp(-x)./2;
y2=cosh(x);
plot(x,y1,'r-',x,y2,'bo');
title('Hyperbolic Cosine Function ');
xlabel('input');
ylabel('cosh');
legend('cosh1','cosh2','nr');
print -djpeg cosh.jpeg
grid on;



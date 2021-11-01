% calculate the potential energy stored in the compressed spring.
F=[20 30 25 20];
k=[200 250 300 400];
x=F./k;
E=(1/2).*k.*(x.^2);
plot(k,E,'r-',k,E,'bo');
title('Stored energy in spring');
xlabel('spring constant');
ylabel('potantial energy');
print -djpeg potantialenergy.jpeg
grid on;

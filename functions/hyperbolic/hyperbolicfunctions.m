%  Write three MATLAB functions to calculate the hyperbolic sine, cosine,
%  and tangent functions

x=-5:0.1:5;
y1=hypsin(x);
figure 
plot(x,y1,"LineWidth",2,"Color",'c');
grid on
title('Hyperbolic Sinus Function','FontSize',12,'FontWeight','b','Color','r');
xlabel('x');
ylabel('sinh(x)');

y2=hypcos(x);
figure 
plot(x,y2,"LineWidth",2,"Color",'c');
grid on
title('Hyperbolic Cosine Function','FontSize',12,'FontWeight','b','Color','r');
xlabel('x');
ylabel('cosh(x)');

y3=hyptan(x);
figure 
plot(x,y3,"LineWidth",2,"Color",'c');
grid on
title('Hyperbolic Cosine Function','FontSize',12,'FontWeight','b','Color','r');
xlabel('x');
ylabel('tanh(x)');


% Write a single MATLAB function hyperbolic to calculate the hyperbolic sine, cosine, and tangent functions as defined in the previous problem.
% The function should have two arguments. The first argument will be a string
% containing the function names 'sinh', 'cosh', or 'tanh', and the second argument will be the value of x at which to evaluate the function. The
% file should also contain three subfunctions sinh1, cosh1, and tanh1 to
% perform the actual calculations, and the primary function should call the
% proper subfunction depending on the value in the string. [Note: Be sure to
% handle the case of an incorrect number of arguments, and also the case of an
% invalid string. In either case, the function should generate an error.]

x=-5:0.1:5;
y=hyperbolic2(x,char('sinh'));
figure 
plot(x,y,"LineWidth",2,"Color",'c');
grid on
title('Hyperbolic Sinus Function','FontSize',12,'FontWeight','b','Color','r');
xlabel('x');
ylabel('sinh(x)');




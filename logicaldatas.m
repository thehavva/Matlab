%Branching Statements and Program Design
%3.1
a=5 >= 5.5;
b=20 > 20;
c=xor( 17 - pi < 15, pi < 3 );
d=true > false;
e=~~(35/17) == (35/17);
f=(7 <= 8) == (3/2 == 1);
g=17.5 && (3.3 > 2.);

%3.2
theta=input('enter a degree : ');
tan(theta);
if cos(theta)>=(10^-20)
    fprintf('value of tan(theta) is %4.3f\n',tan(theta));
else
    error('cos(theta) is less than 10^-20!!');
end

%3.4
pound=input('enter number of package pounds : ');
if (pound<=2)
    amount=15;
    fprintf('amount : %d dollars\n',amount);
elseif (pound>2 && pound<70)
    amount=15+5*pound;
    fprintf('amount : %d dollars\n',amount);
elseif (pound>=70 && pound<=100)
    amount=15+5*pound+15;
    fprintf('amount : %d dollars\n',amount);
elseif (pound>100)
    fprintf('unacceptable number of package!\n');
else
    error('invalid package!');
end


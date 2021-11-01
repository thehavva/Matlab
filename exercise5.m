% Scalar and Array Operations
a=[1 3;2 1];
b=[-1 2; 6 1];
c=[3;2];
d=5;

A=a+b;
B=a.*b;
C=a*b;
D=a./b;
E=a+d;
F=a\b;
%G=a.^b;

% find max value inside an array
maxval=max([1 5 8 -8 36 2]);

% find min value inside an array
minval=min([1 5 8 -8 36 2]);

%find max value and its index inside an array;
[max_val,index]=max([1 5 8 -8 36 2]);

%the statement y = sin(x) calculates the sine of x and stores the result in
%y
x = [ 0 pi/2 pi 3*pi/2 2*pi];
y=sin(x);

% calculates inverse cosx
z=acos(y);

% calculates sinx
t=sin(x);

% Remainder or modulo function
remainder=mod(13,4);

% num2str convert number to string
str=['The value of pi = ' num2str(pi)];
disp(str);

% The fprintf function displays one or more values together with related
% text and lets the programmer control the way in which the displayed value appears.
fprintf('The value of pi is %f \n',pi);

% It is also possible to specify the width of the field in which a number will be displayed and the number of decimal places to display.
fprintf('The value of pi is %6.2f \n',pi);

% when calculations produce complex answers, it is better to use the disp
% function to display answers.
x = 2 * ( 1 - 2*i )^3;
str = ['disp: x = ' num2str(x)];
disp(str);
fprintf('fprintf: x = %8.4f\n',x); % fprintf function cannot include imaginary part of complex number.

% There are many ways to load and save data files in MATLAB
%The save command saves data from the current MATLAB workspace into a disk file
save("labweek2.m","x");

% The load command is the opposite of the save command. It loads data from a disk file into the current MATLAB workspace.
% load("labweek2.m");

% what is the output?
value = 123.4567e2; 
fprintf('value = %e\n',value); %1.234567e+04
fprintf('value = %f\n',value); %12345.670000
fprintf('value = %g\n',value); %12345.7
fprintf('value = %12.4f\n',value); %12345.6700



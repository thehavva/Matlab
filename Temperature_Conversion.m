% Our program must perform the following steps:
% 1. Prompt the user to enter an input temperature in °F.
% 2. Read the input temperature.
% 3. Calculate the temperature in kelvin from Equation (2-5).
% 4. Write out the result, and stop.
%We will use function input to get the temperature in degrees Fahrenheit and function fprintf to print the answer. 

F=input('Enter a temperature in Fahrenheit (°F) : ');
T=(5/9)*(F-32)+273.15;
fprintf('The temperature in F is equal to %5.3f Kelvin\n',T);

%  The program must perform the following steps:
% 1. Create an array of possible values for the load resistance RL. The array
% will vary RL from 1 	 to 100 	 in 1 	 steps.
% 2. Calculate the current for each value of RL.
% 3. Calculate the power supplied to the load for each value of RL.
% 4. Plot the power supplied to the load for each value of RL, and determine the
% value of load resistance resulting in the maximum power.
Volts=120;
Rs=50;
Rl=1:1:100;
amper=Volts./(Rs+Rl);
P=(amper.^2).*Rl;
plot(Rl,P);
title('Plot of power versus load resistance');
xlabel('Load resistance (ohms)');
ylabel('Power (watts)');
grid on;

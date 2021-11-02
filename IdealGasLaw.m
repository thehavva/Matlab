%  The Ideal Gas Law was defined in Example 3.7. Assume
% that the volume of 1 mole of this gas is 10 L, and plot the pressure of the
% gas as a function of temperature as the temperature is changed from 250 to
% 400 kelvins. What sort of plot (linear, semilogx, etc.) is most appropriate
% for this data?
R=8.314;
V=10;
n=1;
T=linspace(250,400);
P=n*R*T/V;
figure (1)
plot(T,P,'o',T,P,'r--');
grid on
% Engineers often measure the ratio of two power measurements in decibels, or dB.
% P2 is the power level being measured
% P1 is some reference power level

P1=1;
P2=input('Enter acceptable power level being measured as milliwatt ');
ratiopower=P2./P1;
dB=10.*(log(ratiopower)./log(10));
fprintf('The ratio of two power measurements in decibels : %3.2f\n',dB);
plot(P1,dB);
semilogx(P1,dB);

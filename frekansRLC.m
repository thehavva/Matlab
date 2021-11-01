L=input('enter a value of L is inductance in henrys : ');
C=input('enter a value of  C is capacitance in farads: ');
ratio=2*pi*sqrt(L*C);
f=1/ratio;
fprintf('frekans : %4.3f\n',f);

M=16;
W=1e6;  % Channel Bandwidth
Rs=W;   % Bandpass
Ts=1/Rs;
L=log2(M);
Rb=L*Rs;
Tb=1/Rb;
EbN0dB_vec = 3:2:20;
m=sqrt(M);
c=1;
while c<=length(EbN0dB_vec)

    EbN0dB=EbN0dB_vec(c);
    sim("M_PSK.slx");
    Pb_sim_psk(c)=ErrorVec(1);
    EbN0=10^(EbN0dB/10);
    EsN0=L*EbN0;
    Ps1=2*qfunc(sqrt(2*EsN0)*sin(pi/M));
    Pb_theo_psk(c)=Ps1/L;
    c=c+1;

end

c=1;
while c<=length(EbN0dB_vec)

    EbN0dB=EbN0dB_vec(c);
    sim("M_QAM.slx");
    Pb_sim_qam(c)=ErrorVec(1);
    EbN0=10^(EbN0dB/10);
    Ps2=(2*(m-1)/m)*qfunc(sqrt((6*log2(m)/((m^2)-1))*EbN0));
    Pb_theo_qam(c)=Ps2/log2(m);
    c=c+1;

end

figure(1)
semilogy(EbN0dB_vec,Pb_theo_psk,'b-o');
hold on
semilogy(EbN0dB_vec,Pb_sim_psk,'r*');
semilogy(EbN0dB_vec,Pb_theo_qam,'k-s');
semilogy(EbN0dB_vec,Pb_sim_qam,'g*');
grid on
legend('16PSK - Theo' ,'16PSK - Sim','16QAM - Theo' ,'16QAM - Sim','Location','southwest');
xlabel('Eb/N0');
ylabel('Pb (Bit Error Rate)');

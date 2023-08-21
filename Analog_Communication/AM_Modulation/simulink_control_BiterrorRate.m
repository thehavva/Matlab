clc

Rb=1e6;
Tb=1/Rb;
EbN0dB_vec=1:12;
c=1;
while c<=length(EbN0dB_vec)
    EbN0dB= EbN0dB_vec(c) % in dB
    sim('Bit_Error_Rate.slx');
    Pb_sim(c)=ErrorVec(1);
    EbN0=10^(EbN0dB/10);
    Pb_theo(c)=qfunc(sqrt(2*EbN0));
    c=c+1;
end
figure(1)
semilogy(EbN0dB_vec,Pb_theo,'b-o')
hold on
semilogy(EbN0dB_vec,Pb_sim,'r*');
grid on
legend('Theoretical BER', 'Simulated BER');
xlabel('E_b / N_O in dB');
ylabel('P_b (BER)');

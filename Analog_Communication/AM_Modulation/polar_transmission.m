clear all


Eb_vec=1:9;
c=1;

while c<=length(Eb_vec)
    N=1e5;  % Number of bits transmitted.
    x= round(rand(1,N));
    Eb=Eb_vec(c);
    N0_2=1; % N0/2=1, noise varience at the output of the matched filter.
    n=sqrt(N0_2)*randn(1,N);  % Noise samples ( variance*samples)
    s=2*x-1;    % Transmitted binary symbols.
    y = sqrt(Eb)*s + n;   % Received symbols.

    x_rec=double(y>0);  % Received vector
    % Compute the simulated Bit error rate
    p_sim(c)= sum(xor(x,x_rec))/N; % Bit Error of x and recovered x
    % Compute the theoretical Bit error rate (BER)
    A=sqrt(Eb);
    sigma0=sqrt(N0_2);
    p_theo(c)=qfunc(A/sigma0); % Theoretical bit error
    EbN0dB(c)=10*log10(Eb/(2*N0_2));   % Eb/No is our signal to noice ratio metric
    c=c+1;
end

figure(1)
semilogy(EbN0dB, p_theo,'b-o');
hold on
semilogy(EbN0dB, p_sim, 'r*');
grid on
xlabel('E_b / N_0 in dB');
ylabel('BER');
legend('Theoretical BER', ' Simulated BER');





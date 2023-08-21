clear all

N=10000;     % Number of bits to be transmitted.
p=0.2;       % Probability of transmitted
x=rand(1,N);
x=double(x > (1-p));
A=2;
s=A*(2*x-1);    %The transmitted symbols are either -A or +A.
nvar=1;
n=sqrt(nvar)*randn(1,N);    % Noise
y=s+n;      % Noisy received samples.

T_vec=-3:0.1:3;
c=1;
while c<=length(T_vec)
    T=T_vec(c);
    xhat=double(y>T); % Received bits
    Pe_sim(c) = sum(xor(x,xhat))/N; % Simulated Error Probability
    Pe_theo(c) = qfunc((T+A)/sqrt(nvar))*(1-p)+(1-qfunc((T-A)/sqrt(nvar)))*(p)
    c=c+1;
end

plot(T_vec,Pe_sim,'ro');
hold on
plot(T_vec,Pe_theo,'b-*');
xlabel('Decision Threshold');
ylabel('probability  of Deciison Error');
legend('Simulated Error Probability','Theoretical Error Probability');
title('Probability of Random Variable');
grid on

T_star=(nvar/(2*A))*log((1-p)/p);
[u,v]=min(Pe_sim);
T_star_sim= T_vec(v);
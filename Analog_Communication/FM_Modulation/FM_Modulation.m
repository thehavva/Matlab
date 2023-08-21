fs=1e4;     % a large sampling rate
ts=1/fs;      % sampling interval
T=0.2; 
t=ts:ts:T;    % time index
fm=20;        % Message frequency
mp=1;         % peak message amplitude
m_sig = mp*cos(2*pi*fm*t);  % Original message signal

kf=160*pi;      %FM constant where delta f = kf*mp/2*pi =80 hz
m_intg=ts*cumsum(m_sig);    %numerical integration

A=1;
fc=250;         % carrier frequency
s=A*cos(2*pi*fc*t + kf*m_intg); % FM Signal

figure(1)
subplot(211)
plot(t,m_sig,'r');
xlabel('Time in seconds');
ylabel('Amplitude');
grid on
axis([0 T -1.5*mp 1.5*mp]);
legend('Message Signal');
subplot(212)
plot(t,s,'b');
xlabel('Time in seconds');
ylabel('Amplitude');
grid on
axis([0 T -1.5*mp 1.5*mp]);
legend('FM Signal');

%% Fourier Transform of FM Signal

n=length(s);
fre=fftshift(fft(s,n));     %Fourier transform of FM Signal
f=(-(n-1)/2:(n-1)/2)*(fs/n); 
figure(2)
stem(f,abs(fre)/n,'b');
xlim([-2*fc 2*fc]);
grid on
xlabel('Frequency');
legend('FFT of FM Signal');

%% FM Demodulator

s_der=diff([s(1) s])/ts/kf; % Numerical Derivation
figure(3)
plot(t,s_der);
hold on
m_rec=envelope(s_der);
plot(t,m_rec,'r');
grid on
xlabel('Time in seconds');
ylabel('Amplitude');
legend('Derivative signal ', 'Envelope Detector');

Fs=1000;    %sampling frequency
ts=1/Fs;    %sampling period
T=2;        %seconds
t=ts:ts:T;  %time interval
fm=20; %Hz,  message frequency
mp=1;   %message peak amplitude
m=mp*cos(2*pi*fm*t);
%m=mp*sawtooth(2*pi*fm*t);

% figure(1)
% plot(t,m);
% axis([0 2 -1.5*mp 1.5*mp]);
% title('time domain response');
% 
% n=length(m); % m is the input signal
% fre=fftshift(fft(m,n)); %computes the fourier transform
% f=(-(n-1)/2:(n-1)/2)*(Fs/n);  %Generate discrete frequency vector y axis
% figure(2)
% stem(f,abs(fre)/n)
% title('frequency-impulse response');
% axis([-100 100 0 1]);

%% AM Modulation Part
A=2; % mu=mp/A = 0.5 in this example
fc=200; % carrier frequency
s=(A+m).*cos(2*pi*fc*t); %modulated signal s(t) AM signal

% figure(1)
% plot(t,s);
% title('Modulated signal in time domain');
% hold on
% plot(t,A+m,'r-');
% legend('AM signal','A+m(t)');
% xlabel('time');
% grid on
% xlim([0 0.2]);
% n=length(s); % m is the input signal
% fre=fftshift(fft(s,n)); %computes the fourier transform
% f=(-(n-1)/2:(n-1)/2)*(Fs/n);  %Generate discrete frequency vector y axis
% figure(2)
% stem(f,abs(fre)/n)
% title('frequency-impulse response');

%% AM Demodulation

[s_upper,s_lower]=envelope(s);
% figure(1)
% plot(t,s);
% hold on
% plot(t,s_upper,'r-');
% hold on
% plot(t,s_lower,'y-');
% title('Modulated signal in time domain');
% legend('AM signal','A+m(t) : upper envelope ');
% xlabel('time');
% grid on
% xlim([0 0.2]);
% 
% m_recovered= s_upper-A;
% figure(2)
% plot(t,m,'b-o');
% hold on
% plot(t,m_recovered,'r-*');
% xlim([0 0.2]); 

%% Double Side Band Modulation
fc=200;     %carrier frequency
s=m.*cos(2*pi*fc*t);     %DSB-SC AM Signal
figure(1)
plot(t,s);
legend('DSB-DC AM Signal');
grid on
xlabel('Time');
n=length(s); % m is the input signal
fre_s=fftshift(fft(s,n)); %computes the fourier transform
f=(-(n-1)/2:(n-1)/2)*(Fs/n);  %Generate discrete frequency vector y axis
% figure(2)
% stem(f,abs(fre_s)/n)
% title('frequency-impulse response');

%% Double Side Band Deodulation
r=2*cos(2*pi*fc*t).*s;
n=length(r); % m is the input signal
fre_r=fftshift(fft(r,n)); %computes the fourier transform
figure(2)
stem(f,abs(fre_s)/n,'bo');
hold on
stem(f,abs(fre_r)/n,'rv');

% employ LPF
f_cuttof=50;
f_stop=100;
lpFilt=designfilt('lowpassfir','PassbandFrequency',f_cuttof,'StopbandFrequency',f_stop,'SampleRate',Fs);
fvtool(lpFilt);
m_recovered=filter(lpFilt,r);
figure(3)
plot(t,m,'b-');
hold on
plot(t,m_recovered,'r-');
axis([0 0.5 -1.5 1.5])

n=length(m); % m is the input signal
fre_m=fftshift(fft(m,n)); %computes the fourier transform

n=length(m_recovered); % m is the input signal
fre_mrec=fftshift(fft(m_recovered,n)); %computes the fourier transform

figure(4)
stem(f,abs(fre_m)/n,'b-');
hold on
stem(f,abs(fre_mrec)/n,'rv');
xlabel('frequency');

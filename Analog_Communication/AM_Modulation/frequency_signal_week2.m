%%Input Messegae Signal
Fa=1000; %sampling rate
ta=1/Fa; %sampling frequency
T=3;

t=ta:ta:T; %interval
fm=1; %message frequency;
y1=cos(2*pi*fm*t); %sinusoidal form
y2=sawtooth(2*pi*fm*t); %triangular form

figure(1)
plot(t,y1,'b-');
hold on
plot(t,y2,'r--');
grid on
xlabel('Time-Seconds');
ylabel('Amplitude');
legend('cos(2*pi*fm*t)','sawtooth(2*pi*fm*t)','Location','southwest');
axis([0 2 -1.5 1.5]); %x eksenindeki interval ve y eksenindeki interval
%% Calculate Fourier Transform
Fa=1000; %sampling rate
ta=1/Fa; %sampling frequency
T=1;
q=pi:-pi;
t=ta:ta:T; % time interval
fm1=50; %message frequency Hz;
y1=cos(2*pi*fm1*t+q); %sinusoidal form
n=length(y1);
fre1=fftshift(fft(y1,n)); %fft(X) is the discrete Fourier transform (DFT) of vector X. fftshift Shift zero-frequency component to center of spectrum.

fm2=150; %message frequency Hz;
y2=cos(2*pi*fm2*t); %sinusoidal form
n=length(y2);
fre2=fftshift(fft(y2,n));

y=y1+y2;
n=length(y);
fre=fftshift(fft(y,n)); %Fourier transform in y axis.
f=(-(n-1)/2:(n-1)/2)*(Fa/n); %Generate discrete frequency vector x axis

% These outputs in time domain
figure(1)
subplot(311);
plot(t,y1,'b');
title('(a)');
subplot(312);
plot(t,y2,'b');
title('(b)');
subplot(313);
plot(t,y,'b');
title('(c)');
xlabel('Time-Seconds');

%These outputs in frequency domain
figure(2)
subplot(311);
stem(f,abs(fre1)/n);
title('(a)');
grid on
subplot(312);
stem(f,abs(fre2)/n);
title('(b)');
grid on
subplot(313);
stem(f,abs(fre)/n);
title('(c)');
grid on
xlabel('Frequency');

%Design A lowpass Filter

f_cuttof=50;
f_stop=150;
lpFilt=designfilt('lowpassfir','PassbandFrequency',f_cuttof,'StopbandFrequency',f_stop,'SampleRate',Fa);
fvtool(lpFilt); %  opens the filter visualization tool to analyze the responseof digital filter D.
rec_y1=filter(lpFilt,y); %apply filter for your datas
n=length(rec_y1);
fre_rec=fftshift(fft(rec_y1,n)); %fourier transform of y

figure(4)
plot(t,y1,'b');
hold on
plot(t,rec_y1,'r');
xlabel('Time seconds');
ylabel('Amplitude');
legend('Voice from pc','Voice with filter','Location','southwest');

figure(5)
stem(f,abs(fre)/n,'bo');
hold on
stem(f,abs(rec_y1)/n,'rv');
xlabel('Frequency');
ylabel('Gain');
grid on





















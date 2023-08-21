Fs=1000;    %sampling frequency
ts=1/Fs;    %sampling period
T=4; 
t=ts:ts:T;
fm1=25;
fm2=50;
fm3=75
m=4*cos(2*pi*fm1*t)+8*cos(2*pi*fm2*t)+8*cos(2*pi*fm3*t);  %message signal
n=length(m);
fre_m=fftshift(fft(m,n)); %computes the fourier transform
f=(-(n-1)/2:(n-1)/2)*(Fs/n);
figure(1)
subplot(211)
stem(f,abs(fre_m)/n,'bo');
grid on
title('(a)');
xlabel('Frequency');
fc=200;
%implement DSB-SC Amplitude
s_dsb=m.*cos(2*pi*fc*t);
fre_sdsb=fftshift(fft(s_dsb,n)); 
figure(1)
subplot(212)
stem(f,abs(fre_sdsb)/n,'bo');
grid on
title('(b)');
xlabel('Frequency');

%% Hilbert Transform - SSB-Modulation
m_h=imag(hilbert(m));
s_usb=m.*cos(2*pi*fc*t)-m_h.*sin(2*pi*fc*t);
s_lsb=m.*cos(2*pi*fc*t)+m_h.*sin(2*pi*fc*t);
fre_susb=fftshift(fft(s_usb,n));
fre_slsb=fftshift(fft(s_lsb,n)); 
figure(2)
subplot(211)
stem(f,abs(fre_susb)/n,'bo');
grid on
title('(a)');
xlabel('Frequency');
subplot(212)
stem(f,abs(fre_slsb)/n,'bo');
grid on
title('(b)');
xlabel('Frequency');
%% USB-Demodulation
r=2*cos(2*pi*fc*t).*s_usb;
n=length(r); % m is the input signal
fre_r=fftshift(fft(r,n)); %computes the fourier transform
figure(3)
subplot(211)
stem(f,abs(fre_r)/n,'bo');
grid on
title('(a)');
xlabel('Frequency');
f_cuttof=80;
f_stop=100;
lpFilt=designfilt('lowpassfir','PassbandFrequency',f_cuttof,'StopbandFrequency',f_stop,'SampleRate',Fs);
%fvtool(lpFilt);
m_recovered=filter(lpFilt,r);
fre_mrec=fftshift(fft(m_recovered,n));

figure(3)
subplot(212)
stem(f,abs(fre_mrec)/n,'bo');
grid on
title('(b)');
xlabel('Frequency');
%% LSB-Demodulation
r=2*cos(2*pi*fc*t).*s_lsb;
n=length(r); % m is the input signal
fre_r=fftshift(fft(r,n)); %computes the fourier transform
figure(4)
subplot(211)
stem(f,abs(fre_r)/n,'bo');
grid on
title('(a)');
xlabel('Frequency');
f_cuttof=80;
f_stop=100;
lpFilt=designfilt('lowpassfir','PassbandFrequency',f_cuttof,'StopbandFrequency',f_stop,'SampleRate',Fs);
%fvtool(lpFilt);
m_recovered=filter(lpFilt,r);
fre_mrec=fftshift(fft(m_recovered,n));

figure(4)
subplot(212)
stem(f,abs(fre_mrec)/n,'bo');
grid on
title('(b)');
xlabel('Frequency');

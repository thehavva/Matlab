Fs=1000;    % sampling rate is used to approximate a continuous time signal
td=1/Fs;    % sampling period
T=1; 
t=td:td:T;  % Approximation of continuous time.
fm=40;      % Message frequency
x=cos(2*pi*fm*t);
Lx=length(x);

%% Sampling 
fs=200;     % sample the continuous time signal at a rate Fs
ts=1/fs;
N=ts/td;    % N should be integer
s_out=downsample(x,N);
s_out=upsample(s_out,N);

figure(1)
plot(t,x);
hold on
stem(t,s_out,'r');
grid on
xlabel('Time')
legend('Original signal', 'Sampled signal');

%% Fourier Transform
n=length(x);
f=(-(n-1)/2:(n-1)/2)*(Fs/n);    %Defines the discrete time frequencies
fre_x=fftshift(fft(x,Lx));  % Compute the fourier transform of oiginal continuous time signal.
fre_s=fftshift(fft(s_out,Lx));  % Compute the fourier transform of sampled discreete time signal

figure(2)
stem(f,abs(fre_x)/n,'b-s');
hold on
stem(f,abs(fre_s)/n,'r-o'); 
grid on
xlabel('Frequency');
legend('Original signal Spectrum ', 'Sampled signal spectrum');
ylim([0 0.6]);

%% Design a LPF for reconstruction

fcutoff=50;
fstop=100;
lpFilt=designfilt('lowpassfir','PassbandFrequency',fcutoff,'StopbandFrequency',fstop,'SampleRate',Fs);
%fvtool(lpFilt);
s_recovered=N*filter(lpFilt,s_out);
figure(4)
plot(t,x);
hold on
plot(t,s_recovered);
grid on
legend('Original Message', 'Recovered Signal');
ylim([-1.5 1.5]);

fre_srec=fftshift(fft(s_recovered,n));  %Compute the Fourier Transform of the sampled discrete time signal

figure(5)
stem(f,abs(fre_x)/n,'b-s');
hold on
stem(f,abs(fre_srec)/n,'r-o'); 
grid on
legend('Original Message Spectrum', 'Recovered Message Spectrum');
ylim([0 0.6]);


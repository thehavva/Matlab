clearvars
[Y,fs]=audioread('C:\Users\LENOVO-PC\Desktop\Dersler\Communication Engineering\MATLAB\ses_deneme.mp3'); 
T=1/fs; % sampling period
L=length(Y);
t=(0:L-1)*T;
N=size(Y,1);
figure;
stem(t,Y);
title('Original Voice : Time Domain');
xlabel('time in seconds');
ylabel('amplitude');
%% Plot spektrum
df=fs/N;
w=(-(N/2):(N/2)-1)*df;
ynew=fft(Y)/N;
y2=fftshift(ynew);
plot(w,abs(y2));
title('Original Voice : Time Domain');
xlabel('time in seconds');
ylabel('amplitude');

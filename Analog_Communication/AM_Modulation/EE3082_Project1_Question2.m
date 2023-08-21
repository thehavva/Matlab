clear all
close all

%% Part a
Fs=40000;   % Sampling rate at continuous time
nBits=16;   % Number of bits to represents each sampling.
nChannel=1; % Mono Channel
ID=-1;      % Default audio input device
recordingObje1=audiorecorder(Fs,nBits,nChannel,ID);
recordblocking(recordingObje1,4);
myRecording1=getaudiodata(recordingObje1);
y1=getaudiodata(recordingObje1);
filename='message1.wav';
audiowrite(filename,y1,Fs);
% % “The two met while playing on the sand.”
% 
recordingObje2=audiorecorder(Fs,nBits,nChannel,ID);
recordblocking(recordingObje2,4);
myRecording2=getaudiodata(recordingObje2);
y2=getaudiodata(recordingObje2);
filename='message2.wav';
audiowrite(filename,y2,Fs);
% % "This is a grand season for hikes on the road.”

%% Part b
[y1, Fr]= audioread('message1.wav');
[y2, Fk]= audioread('message2.wav');
fc=8000;
ts=1/Fs;    %sampling period
T=4; 
t=ts:ts:T;
s_qam=y1.*cos(2*pi*fc*t')+y2.*sin(2*pi*fc*t');  % Implement QAM Modulation

figure(1)
subplot(211)
plot(t,y1);
xlabel('Time')
ylabel('Amplitude')
title('(a)');
subplot(212)
plot(t,y2,'r');
xlabel('Time')
ylabel('Amplitude')
title('(b)');

figure(2)
plot(t,s_qam,'b');
hold on

%Two sided QAM Spectrum
% Use Spectrum Analyzer instead of Fourier Transform by FFT
% Spectrum Analyzer

analyzer= dsp.SpectrumAnalyzer('SampleRate',Fs,...
    'PlotAsTwoSidedSpectrum',true,'NumInputPorts',3,...
    'ChannelNames',{'Message 1','Message 2',' QAM Modulation'});
analyzer(y1,y2,s_qam);
release(analyzer);

%% Part c
noisePower = 1e-6; % 1 micro Watt
noise = sqrt(noisePower)*randn(size(s_qam));    
s_qam = s_qam + noise;
plot(t,s_qam);
xlabel('Time')
ylabel('Amplitude');
legend('QAM Signal','Noise QAM');
xlim([1.8 1.802]);

%% Part d
y1_qam=2*cos(2*pi*fc*t').*s_qam;    % Implement QAM Demodulation
fcutoff=2000;
fstop=10000;
lpFilt=designfilt('lowpassfir','PassbandFrequency',fcutoff,'StopbandFrequency',fstop,'SampleRate',Fs);
y1_recovered=filter(lpFilt,y1_qam);

y2_qam=2*sin(2*pi*fc*t').*s_qam;
fcutoff=2000;
fstop=10000;
lpFilt=designfilt('lowpassfir','PassbandFrequency',fcutoff,'StopbandFrequency',fstop,'SampleRate',Fs);
y2_recovered=filter(lpFilt,y2_qam);

% Extra Spektrum Analyzer
analyzer= dsp.SpectrumAnalyzer('SampleRate',Fs,...
    'PlotAsTwoSidedSpectrum',true,'NumInputPorts',5,...
    'ChannelNames',{'Message-1','Message-2',' QAM Modulation','Recovered Message-1','Recovered Message-2'});
analyzer(y1,y2,s_qam,y1_recovered,y2_recovered);
release(analyzer);

figure(3)
subplot(311)
plot(t,y1);
xlabel('Time')
ylabel('Amplitude')
title('(a)');
subplot(312)
plot(t,y1_recovered,'r');
xlabel('Time')
ylabel('Amplitude')
title('(b)');
subplot(313)
plot(t,y1);
hold on
plot(t,y1_recovered,'r');
xlabel('Time')
ylabel('Amplitude')
title('(c)');

figure(4)
subplot(311)
plot(t,y2);
xlabel('Time')
ylabel('Amplitude')
title('(a)');
subplot(312)
plot(t,y2_recovered,'r');
xlabel('Time')
ylabel('Amplitude')
title('(b)');
subplot(313)
plot(t,y2);
hold on
plot(t,y2_recovered,'r');
xlabel('Time')
ylabel('Amplitude')
title('(c)');

soundsc(y1,Fs);
pause
soundsc(y1_recovered,Fs);
pause
soundsc(y2,Fs);
pause
soundsc(y2_recovered,Fs);

%% Part e

noisePower = 1e-3; % 1 mili Watt
noise = sqrt(noisePower)*randn(size(s_qam));    
s_qam = s_qam + noise;
plot(t,s_qam);
xlabel('Time')
ylabel('Amplitude');
legend('QAM Signal','Noise QAM');
xlim([1.8 1.802]);

y1_qam=2*cos(2*pi*fc*t').*s_qam;    % Implement QAM Demodulation
fcutoff=2000;
fstop=10000;
lpFilt=designfilt('lowpassfir','PassbandFrequency',fcutoff,'StopbandFrequency',fstop,'SampleRate',Fs);
y1_recovered=filter(lpFilt,y1_qam);

y2_qam=2*sin(2*pi*fc*t').*s_qam;
fcutoff=2000;
fstop=10000;
lpFilt=designfilt('lowpassfir','PassbandFrequency',fcutoff,'StopbandFrequency',fstop,'SampleRate',Fs);
y2_recovered=filter(lpFilt,y2_qam);

% Extra Spektrum Analyzer
analyzer= dsp.SpectrumAnalyzer('SampleRate',Fs,...
    'PlotAsTwoSidedSpectrum',true,'NumInputPorts',5,...
    'ChannelNames',{'Message-1','Message-2',' QAM Modulation','Recovered Message-1','Recovered Message-2'});
analyzer(y1,y2,s_qam,y1_recovered,y2_recovered);
release(analyzer);

figure(5)
subplot(311)
plot(t,y1);
xlabel('Time')
ylabel('Amplitude')
title('(a)');
subplot(312)
plot(t,y1_recovered,'r');
xlabel('Time')
ylabel('Amplitude')
title('(b)');
subplot(313)
plot(t,y1);
hold on
plot(t,y1_recovered,'r');
xlabel('Time')
ylabel('Amplitude')
title('(c)');

figure(6)
subplot(311)
plot(t,y2);
xlabel('Time')
ylabel('Amplitude')
title('(a)');
subplot(312)
plot(t,y2_recovered,'r');
xlabel('Time')
ylabel('Amplitude')
title('(b)');
subplot(313)
plot(t,y2);
hold on
plot(t,y2_recovered,'r');
xlabel('Time')
ylabel('Amplitude')
title('(c)');

soundsc(y1,Fs);
pause
soundsc(y1_recovered,Fs);
pause
soundsc(y2,Fs);
pause
soundsc(y2_recovered,Fs);


clear all
close all

%% Part a
Fs=40000;     % Sampling rate at continuous time
nBits=16;   % Number of bits to represents each sampling.
nChannel=1; % Mono Channel
ID=-1;      % Default audio input device
recordingObje=audiorecorder(Fs,nBits,nChannel,ID);
recordblocking(recordingObje,4);
myRecording=getaudiodata(recordingObje);
y1=getaudiodata(recordingObje);
filename='message.wav';
audiowrite(filename,y1,Fs);
play(recordingObje);
Use a pencil to write the first draft

%% Part b
td=1/Fs;    % sampling period
T=4; 
t=td:td:T;  % Approximation of continuous time.
fs=4000;     % sample the continuous time signal at a rate Fs
ts=1/fs;

% Sampling
N=ts/td;    % N should be integer
[y1, Fr]= audioread('message.wav');
s_out=downsample(y1,N);

n1=length(y1);
n2=length(s_out);
tx=(0:n1-1)/Fs;
ts=(0:n2-1)/fs;

figure(1)
subplot(211)
plot(tx,y1);
xlabel('Time')
ylabel('Amplitude')
title('(a)');
subplot(212)
stem(ts,s_out,'r');
xlabel('Time')
ylabel('Amplitude')
title('(b)');

figure(2)
plot(tx,y1);
hold on
stem(ts,s_out,'r');
grid on
xlabel('Time')
ylabel('Amplitude')
title('Down Sampling');
legend('Original signal', 'Sampled signal');
xlim([1.8 1.808]);

%% Part c
% Use Spectrum Analyzer instead of Fourier Transform by FFT
% Spectrum Analyzer
s_out=upsample(s_out,N);
analyzer= dsp.SpectrumAnalyzer('SampleRate',Fs,...
    'PlotAsTwoSidedSpectrum',true,'NumInputPorts',2,...
    'ChannelNames',{'ORIGINAL SIGNAL','SAMPLED SIGNAL'});
analyzer(y1,s_out);
release(analyzer);

%% Part d
fcutoff=2000;
fstop=5000;
lpFilt=designfilt('lowpassfir','PassbandFrequency',fcutoff,'StopbandFrequency',fstop,'SampleRate',Fs);
s_recovered=N*filter(lpFilt,s_out);

figure(3)
plot(t,y1,'r');
hold on
plot(ts,s_recovered,'b');
grid on
xlabel('Time')
ylabel('Amplitude')
legend('Original Message', 'Recovered Signal');
xlim([1.04 1.08]);

soundsc(y1,Fs);
pause
soundsc(s_recovered,fs);
%% Part e
% I changed fs value as a 4000 only then repeat pocedure 
% Then I followed all the procedures exactly.
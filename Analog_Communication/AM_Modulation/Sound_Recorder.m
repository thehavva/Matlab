Fs=44100;
% nBits=16;   %Number of bits to represents each sampling.
% nChannel=1; %Mono Channel
% ID=-1;      %default audio input device
% recObj=audiorecorder(Fs,nBits,nChannel,ID);
% disp('Start speaking first message for 3 seconds.');
% recordblocking(recObj,3);
% disp('End of recording the first message.');
% myRecording=getaudiodata(recObj);
% m1=getaudiodata(recObj);
% filename='message1.wav';
% audiowrite(filename,y1,Fs);
%play(recObj);

[m1,Fs]=audioread("message1.wav");
n=size(m1,1); %length of sound
t=(0:n -1)/Fs;  %total time in seconds
f=(-(n-1)/2:(n-1)/2)*(Fs/n);    %frequency range
fre_m=fftshift(fft(m1,n));  % fourier transform of message

% figure(1)
% plot(t,m1);
% figure(2)
% stem(f,abs(fre_m)/n);

%% Modulation
Fc=15000;
freqdev=7500;                %Delta f
phasedev=pi/2;              
s_am=ammod(m1,Fc,Fs);        %Implements AM
s_ssb=ssbmod(m1,Fc,Fs);      %Implements LSB 
s_fm=fmmod(m1,Fc,Fs,freqdev);  %Implements LSB
s_pm=pmmod(m1,Fc,Fs,phasedev);  %Implememnts PM
s_qam=qammod(m1, 16, 'InputType', 'bit', 'UnitAveragePower', true, 'PlotConstellation', true);
% fre_sam=fftshift(fft(s_am,n));  
% fre_sssb=fftshift(fft(s_ssb,n));     
% fre_sfm=fftshift(fft(s_fm,n));
% figure(1)
% subplot(411)
% stem(f,abs(fre_m)/n);
% subplot(412)
% stem(f,abs(fre_sam)/n);
% subplot(413)
% stem(f,abs(fre_sssb)/n);
% subplot(414)
% stem(f,abs(fre_sfm)/n);

% Use Spectrum Analyzer instead of Fourier Transform by FFT
% Spectrum Analyzer
% sa= dsp.SpectrumAnalyzer('SampleRate',Fs,...
%     'PlotAsTwoSidedSpectrum',true,'NumInputPorts',5 ,...
%     'ChannelNames',{'Message','FM Signal','PM Signal','AM Signal','LSB Signal'});
% sa(m1,s_fm,s_pm,s_am,s_ssb);
% release(sa);
%% Add Channel Noise
% SNRdb=20;           %(Signal power (S) / Noise power (N) ) in dB.
% S=mean(s_am.^2);    %Average power of the AM Signal- in watts
% N= S/(10^(SNRdb/10));   %Noise power
% w=sqrt(N)*randn(size(s_am));
% s_am=s_am+w;        %Noisy AM Signal
% 
% S=mean(s_fm.^2);    %Average power of the FM Signal- in watts
% N= S/(10^(SNRdb/10));   %Noise power
% w=sqrt(N)*randn(size(s_fm));
% s_fm=s_fm+w;        %Noisy fm  Signal
% 
% S=mean(s_pm.^2);    %Average power of the PM Signal- in watts
% N= S/(10^(SNRdb/10));   %Noise power
% w=sqrt(N)*randn(size(s_pm));
% s_pm=s_pm+w;        %Noisy pm Signal
% 
% S=mean(s_ssb.^2);    %Average power of the SSB Signal- in watts
% N= S/(10^(SNRdb/10));   %Noise power
% w=sqrt(N)*randn(size(s_ssb));
% s_ssb=s_ssb+w;        %Noisy SSB  Signal
 %% Demodulation
%  m_ram=amdemod(s_am,Fc,Fs);
%  m_rssb=ssbdemod(s_ssb,Fc,Fs);
%  m_rfm=fmdemod(s_fm,Fc,Fs,freqdev);
%  m_rpm=pmdemod(s_pm,Fc,Fs,phasedev);
%  disp('Hit Enter to listen  recovered message after AM')
%  pause
%  soundsc(m_ram,Fs); 
%  disp('Hit Enter to listenning recovered message after SSB')
%  pause
%  soundsc(m_rssb,Fs); 
%  disp('Hit Enter to listenning recovered message after FM')
%  pause
%  soundsc(m_rfm ,Fs);
%  disp('Hit Enter to listenning recovered message after PM')
%  pause
%  soundsc(m_rpm ,Fs);
%% ses işleme
a=audioread('C:\Users\LENOVO-PC\Desktop\Dersler\Communication Engineering\MATLAB\ses_deneme.mp3'); 
[Y,fs]=audioread('C:\Users\LENOVO-PC\Desktop\Dersler\Communication Engineering\MATLAB\ses_deneme.mp3'); 
n=length(a)/fs ; %How much length the file in terms of seconds
% sound(Y,fs); % Listen to the voice
%sound(Y,fs*2); %Listen to the voice 2x
t=[1/fs:1/fs:n]; % time interval
%plot(t,a);
% y2=audiowrite('filename.mp3',yx,fs); % if we change the file to save
% this, we can use audiowrite command
Ts=1/fs;
f_cuttof=1e3;
f_stop=10e3;
lpfilt=designfilt('lowpassfir','PassbandFrequency',f_cuttof,'StopbandFrequency',f_stop,'SampleRate',fs)
Y_new=filter(lpfilt,Y);
figure(1)
plot(t,Y,'b');
hold on
plot(t,Y_new,'r');
xlabel('Time seconds');
ylabel('Amplitude');
legend('Voice from pc','Voice with filter','Location','southwest');



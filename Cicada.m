function voice_2_Data
%% This code is written by S.Sabarathinam to convert the sound (*.WAV) file
%into data (*.txt) file. The sample frequency length automatically
%calculated from the data length. Please Note that the sound file can play more than
%5 seconds.
% Save the data
fid = fopen('cicada_data.txt','w+');

%Feed the Sound file
[data,fs]=audioread('cicadae.wav'); % loads “cicada.wav”
%size(road)
s1=data(:,1);
s2=data(:,2);
% Here S2 contain the data
%sample frequency calculation
time=(1/44100)*length(s1);
%t=linspace(0,time,length(s1));
data_size=size(s2)
plot(s2(50000:52000)); % plot the data of our sample sound
xlabel('time (sec)');
ylabel('Relative signal strength')
title(sprintf('Audio to data convertion length %2.2f:',length(s2)))

% if you want to play the sound just enable the folowing line
%soundsc(right,fs);
%20K Transients are removed
%Here 80K data will be stored after the removal of 20K
%data points.
fprintf(fid,'%12.8f\n',s2(20000:100000));
fclose(fid);
        
end
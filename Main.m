close all;
clear all;
clc;

%Answer to 1.a
[filename, pathname] = uigetfile ('*.*','Select the Input Audio');
[input,fs] = audioread(filename);
%listening to the input signal
sound(input,inputfs);
figure(1);
freqz(input);
title('magnitude plot of input signal');


%answer to 1.b
%put periodicity code here%


%answer to 1.c 

%filter design
output1 = filter(bandpass,input);
output2 = filter(highpass,input);
output3 = filter(bandstop,input);
output4 = filter(lowpass,input);




%answer to 1.d

%choosing bandpass output 'output1' as our de-noise filter
figure(2);
plot(output1);
title('Plot of output signal');

%listening to the output signal
sound(output1,fs);
audiowrite('Audio_signal_without_noise.wav',output1,fs); %extracting output
close all;
clear all;
clc;

%Answer to 1.a
[filename, pathname] = uigetfile ('*.*','Select the Input Audio');
[input,fs] = audioread(filename);
%listening to the input signal
sound(input,fs);

figure(1);
freqz(input);
title('magnitude plot of input signal');
pause(4);


%answer to 1.b
period = xcorr(input,fs,'coeff');
figure(2);
title("Periodicity of the input signal");
plot(period);
%the signal repeats its self after every 70 samples%


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
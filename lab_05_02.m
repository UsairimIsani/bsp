clear all;
close all;
clc;

load eeg_data;
N = length(eeg);
fs = 50;
t = [0:N-1]/fs;

figure(1);
plot(t,eeg);
title("EEG signal");
xlabel("Time");
ylabel("Amplitude");

% create a set of sin waves (1 to 25 Hz)
for i = 1:25
   f(i) = i; % used for plotting
   x = sin(2*pi*i*t);
   rxy = xcorr(x, eeg,1000,"coeff");
   rmax(i) = max(rxy); % max corr with current sine wave
end

figure(2);
stem(f,rmax); % plot max corr with each sin wave
title("Max corr with Sine waves");
xlabel("Frequency (Hz)")
ylabel("Corr coef");
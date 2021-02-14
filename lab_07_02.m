clear all;
close all;
clc;

load("ecg.dat");
fs = 200;
N = length(ecg);
ts = 1/fs; % sampling interval
t = 0:ts:(N/fs)-ts;

figure(1);
plot(t, ecg);
title("ECG signal in time domain");
xlabel("Time");
ylabel("Amplitude");

Xf = fft(ecg);
mag = abs(Xf);
freq = (1:N)*fs/N;
figure(2);
plot(freq, mag);
title("ECG signal in Frequency domain");
xlabel("Frequency (Hz)");
ylabel("Amplitude");
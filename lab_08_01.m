
clear all;
close all;
clc;

f1 = 30;
f2 = 50;
fs = 1000;
N = 200;
t = [0:N-1]/fs;

sig1 = sin(2*pi*f1*t);
sig2 = sin(2*pi*f2*t);

figure(1)
subplot(2,1,1);
plot(t, sig1);
title("30 Hz Sine wave")
xlabel("Time");
ylabel("Amplitude");
subplot(2,1,2);
plot(t, sig2);
title("50 Hz Sine wave")
xlabel("Time");
ylabel("Amplitude");

summed_sig = sig1 + sig2;
figure(2);
subplot(2,1,1);
plot(t,summed_sig);
title("Summed Sine wave (30Hz + 50) Hz");
xlabel("Time");
ylabel("Amplitude");
hold on

freq = fft(summed_sig);
freq_pwr = abs(freq(1:N/2)).^2;
freq_pwr_normalized = freq_pwr/max(freq_pwr);
freq_db = log10(freq_pwr_normalized)*10;
freq_scale = (1:N/2)*fs/N;
subplot(2,1,2);
plot(freq_scale,freq_db);
title("Normalized frequency spectrum of summed signal");
xlabel("Frequency");
ylabel("dB");

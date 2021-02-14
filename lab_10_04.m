clear all;
close all;
clc;

f = 20;
fs = 100;
N = 513;
t = [1:N-1]/fs;
sig = sin(2*pi*t*f); % 20 hz sin wave
sig = sig + rand(size(sig)).*5; % add noise

figure(1);
subplot(211);
plot(t, sig);
title("Noisy signal (20 Hz Sine wave + Random noise)");
xlabel("Time");
ylabel("Amplitude");
xlim([0 5]);

freq = (1:N-1)*fs/N;
subplot(212);
plot(freq, abs(fft(sig).^2));
xlim([0 fs/2]);
title("Frequency response of noisy signal");
xlabel("Frequency");
ylabel("Amplitude");
ylim([0 50000])

order = 128; % higher order --> greater roll of rate
f_low = 18;
f_high = 22;
wn = [f_low*2/fs f_high*2/fs];
[b, a] = fir1(order, wn, "bandpass",hamming(order+1));
[h, freq] = freqz(b,a, N-1, fs*2);

filtered_sig = filter(b,a, sig); % apply designed filter to signal
figure(2);
subplot(211);
plot(t, filtered_sig)
title("Filtered signal");
xlabel("Time");
ylabel("Amplitude");
xlim([0 5]);

subplot(212);
plot(freq, abs(fft(filtered_sig).^2))
title("Filtered spectrum of filtered signal");
xlabel("Frequency (Hz)");
ylabel("Amplitude");
xlim([0 fs/2]);

clear all;
close all;
clc;

fs = 100;
order = 128; % higher order --> greater roll of rate
wn = [6*2/fs 12*2/fs];
[b, a] = fir1(order, wn, "bandpass",hamming(order+1));
[h, freq] = freqz(b,a, 512, fs);

figure(1);
plot(freq, abs(h), "k");
xlabel("Frequency (Hz");
ylabel("H(f)")
title("Frequency Response of Bandpass filter 6Hz to 12Hz")

% apply on eeg data
load EEG_data
N = length(eeg);
t = (1:N)/fs;
filtered_eeg = filter(b,a, eeg); % apply designed filter to eeg
figure(2);
subplot(211);
plot(t, eeg);
title("Original EEG signal");
xlabel("Time");
ylabel("Amplitude");
subplot(212);
plot(t, filtered_eeg);
title("Filtered EEG signal");
xlabel("Time");
ylabel("Amplitude");

% freq response of filter
figure(3);
fscale = (1:N)*fs/N;
plot(fscale, abs(fft(filtered_eeg).^2));
xlim([0 20]);
xlabel("Frequency (Hz)");
ylabel("Amplitude");
title("Frequency response of filtered EEG signal");

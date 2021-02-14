
clear all;
close all;
clc;

% filter design
fs = 100;
order = 128;
wn1 = 5*2/fs; % normalized bandwidth (omega 1)
wn2 = 15*2/fs;
wn = [wn1 wn2]; % cut-off freqs for band pass/stop filters
b = fir1(order, wn, "bandpass"); % default window = hamming (input: N = order +1)

[h, freq] = freqz(b, 1, 512, fs); % check mag and freq response of filter
plot(freq, abs(h));
title("Frequency response of bandpass filter");
xlabel("Frequency (Hz");
ylabel("H(f)")

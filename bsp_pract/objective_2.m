clear all;
close all;
clc;

ecg = load("eeg1-c3.dat");

t = 0:length(ecg)-1;
fs = 1;
figure(1);
plot(t, ecg);
xlabel("Samples");
ylabel("Amplitude");
title("ECG waveform");

M = 200; % window size
hamm_win = hamming(M);
ecg_hamm = ecg(1:M).*hamm_win'; % dot product
figure(2);
plot(ecg_hamm);
title("Hamming window applied on ECG");
xlabel("Time");
ylabel("Amplitude");

M = 200; % window size
rect_win = rectwin(M);
ecg_rect = ecg(1:M).*rect_win'; % dot product
figure(3);
plot(ecg_rect);
title("Rectangular window applied on ECG");
xlabel("Time");

YI_pre = ecg - mean(ecg); % heart rate - avg_HR
Y_freq_pre = fft(YI_pre); % step 1 for PSD
Y_mag_pre = abs(Y_freq_pre);
PSD_pre = (Y_mag_pre.^2); % step 2 for PSD
N_pre = length(PSD_pre); % used for plotting
freq_pre = (1:N_pre)*fs/N_pre;
figure(1);
plot(freq_pre, PSD_pre);
title("Heart Rate PSD pre state")
xlabel("Frequency");
ylabel("PSD");
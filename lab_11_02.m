load ecg.dat;


fs = 400;
n = 8;
wp = 58*2/fs;
wn = 62*2/fs;

[b,a] = butter(n, [wp, wn],'stop'); % notch filter for 60Hz noise
[H, f1] = freqz(b,a,512, fs);
H = 20*log10(abs(H));
figure(1);
plot(f1,H, "k");
ylim([-80 0]);
xlabel("Frequency")
title("Butterworth Notch filter response");

ecg_freq = abs(fft(ecg));
ecg_filtered = filter(b,a,(ecg_freq));

figure(2);
subplot(211);
plot(1:length(ecg_filtered), ecg_freq);
xlabel("Frequency")
title("ECG frequency response");
subplot(212);
plot(1:length(ecg_filtered), ecg_filtered);
xlabel("Frequency")
title("Filtered ECG frequency response");
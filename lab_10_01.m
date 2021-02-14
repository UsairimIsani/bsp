load ecg.dat

t = 0:length(ecg)-1;
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
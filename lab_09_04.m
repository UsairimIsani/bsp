% apply rect window of size 3000
M = 3000; % window size
Rect_win = rectwin(M);
signal_rect = sig_summed(1:M).*Rect_win'; % dot product
figure(8);
plot(signal_rect);
title("windowed function");
xlabel("Time");
ylabel("Amplitude");
fft1_mag = abs(fft(signal_rect));
ps1 = (fft1_mag).^2;
freq_axis = (1:M)*fs/M;
figure(9);
plot(freq_axis, 10*log10(ps1));
title("Power spectrum of Rectangular windowed function with N = 2000");
xlabel("Frequency");
ylabel("db");
xlim([0 100]);


% apply hamm window of size 3000
M = 3000; % window size
hamm_win = hamming(M);
signal_hamm = sig_summed(1:M).*hamm_win'; % dot product
figure(10);
plot(signal_hamm);
title("windowed function");
xlabel("Time");
ylabel("Amplitude");
fft1_mag = abs(fft(signal_hamm));
ps1 = (fft1_mag).^2;
freq_axis = (1:M)*fs/M;
figure(11);
plot(freq_axis, 10*log10(ps1));
title("Power spectrum of Hamming windowed function with N = 2000");
xlabel("Frequency");
ylabel("db");
xlim([0 100]);
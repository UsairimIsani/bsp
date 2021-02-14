% create window
N = 250;
rect_win = rectwin(N);
rect_win = ([zeros(1,25), rect_win', zeros(1,25)]); % zeros padding (outside window)

hann_win = hann(N);
hann_win = ([zeros(1,25), hann_win', zeros(1,25)]);

figure(2);
plot(hann_win, "r");
hold on;
plot(rect_win, "g");
legend(["Hanning Window", "Rectangular Window"]);

% freq domain
hann_fft = fftshift(fft(hann_win)); % fftshift shifts scale to -fs/2 to fs/2
rect_fft = fftshift(fft(rect_win));

freq = (-150:150-1)*fs/300; % samples =  25 + 250 + 25 = 300
hann_ss = 10*log10(abs(hann_fft));
rect_ss = 10*log10(abs(rect_fft));

figure(3);
plot(freq, hann_ss,"b");
hold on;
plot(freq, rect_ss, "r");
legend(["FFT of hanning window", "FFT of rectangular window"])
xlabel("Frequency");
ylabel("Amplitude");
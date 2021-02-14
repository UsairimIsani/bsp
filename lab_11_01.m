clear all;
close all;
clc;

fs = 2000;
n = 8; % order of filter
wn = 200*2/fs; % normalized cutoff freq (200)
rp = 3; % passband ripples
rs = 60; % stopband ripples

% butterworth filter has no ripple in pass/stop band
[b, a] = butter(n,wn, "low"); % 2nd stage IIR filter: Since we know n, wn
% b and a are coefs of filter

[H, f1] = freqz(b, a, 512, fs); % freq response of filter,
% no. of points in output spectrum  = 512

H = 20*log10(abs(H)); % plot freq response ROR
subplot(221);
plot(f1,H, "k");
ylim([-80 0]);
title("Butterworth filter response");

% chebyshev type 1 filter has ripple in passband
[b,a] = cheby1(n,rp,wn);
[H, f2] = freqz(b,a,512, fs);
H = 20*log10(abs(H));
subplot(222);
plot(f2, H,"k");
title("Chebyshev type 1 filter response");
ylim([-80 0]);

% chebyshev type 2 filter has ripples in stopband
% also called equiripple filter
[b,a] = cheby2(n,rs,wn);
[H, f3] = freqz(b,a,512, fs);
H = 20*log10(abs(H));
subplot(223);
plot(f3, H,"k");
title("Chebyshev type 2 filter response");
ylim([-80 0]);

% Elliptic filter has ripples in both pass and stopband
% fastest ROR (transition from pass to stop band)
[b,a] = ellip(n,rp, rs,wn);
[H, f4] = freqz(b,a,512, fs);
H = 20*log10(abs(H));
subplot(224);
plot(f4, H,"k");
title("Elliptic filter response");
ylim([-80 0]);
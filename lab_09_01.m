close all;
clear all;
clc;

f1 = 10;
f2 = 15;
fs = 1000;
t = 0:1/fs:3;
sig1 = cos(2*pi*f1*t);
sig2 = cos(2*pi*f2*t);
sig_summed = sig1 + sig2;

figure(1);
subplot(311);
plot(t, sig1);
xlabel("Time");
ylabel("Amplitude");
title("10 Hz cosine wave");

subplot(312);
plot(t, sig2);
xlabel("Time");
ylabel("Amplitude");
title("15 Hz cosine wave");

subplot(313);
plot(t, sig_summed);
xlabel("Time");
ylabel("Amplitude");
title("Sum of cosine wave (10Hz + 15Hz)");
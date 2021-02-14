clear all;
close all;
clc;

N=500; % no of data points
T = 1; % time period of signals
fs= N/T; % sampling freq
t = [1:N]/fs; % Time vector

x=sin(2*pi*t); % 1 Hz sine wave
y=cos(2*pi*t); % 1 Hz cosine wave
z = square(2*pi*t); % 1 Hz square wave

% plotting all 3 signals
figure(1);
plot(t,x);
hold on;
plot(t,y);
plot(t,z);
title("1 Hz Sine, Cosine and Square signals")
xlabel("Time");
ylabel("Amplitude");
legend(["Sin", "Cos", "Square"])
hold off;

% Calculate corr among all signals
D = zeros(N,3); % matrix having all signals
D(:,1) = x; % signals in columns
D(:,2) = y;
D(:,3) = z;
r = corrcoef(D); % corr using this func
disp(r)
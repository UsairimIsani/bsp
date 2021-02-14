
clear all;
close all;
clc;

load("Hr_pre.mat"); % load datasets
load("Hr_med.mat");

fs = 1; % 1 samples/sec

% pre med recording
xi_pre = ceil(t_pre(1):fs:floor(t_pre(end))); % evenly spaced vector of desired datapoints
% resampling using interp1
yi_pre = interp1(t_pre,hr_pre, xi_pre); % linear interpolation (using evenly spaced vectors), t_pre and hr_pre used for interpolation, and xi_pre = desired data points.
YI_pre = yi_pre - mean(yi_pre); % heart rate - avg_HR
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

% post med recording
xi_med = ceil(t_med(1):fs:floor(t_med(end))); % evenly spaced vector of desired datapoints
yi_med = interp1(t_med,hr_med, xi_med); % linear interpolation (using evenly spaced vectors), t_pre and % hr_pre used for interpolation, and xi_pre = desired data points.
YI_med = yi_med - mean(yi_med); % heart rate - avg_HR
Y_freq_med = fft(YI_med); % step 1 for PSD
Y_mag_med = abs(Y_freq_med);
PSD_med = (Y_mag_med.^2); % step 2 for PSD
N_med = length(PSD_med); % used for plotting
freq_med = (1:N_med)*fs/N_med;
figure(2);
plot(freq_med, PSD_med);
title("Heart Rate PSD med state")
xlabel("Frequency");
ylabel("PSD");

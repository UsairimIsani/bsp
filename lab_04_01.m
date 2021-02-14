clear all;
close all;
clc;

load ver; % load visual evoked signal (ver) data
fs = 1/0.005; % sampling freq
[r, c] = size(ver);
if r>c % do as per dim of vector
    ver = ver';
    t = (1:r)/fs; % time scale
else
    t = (1:c)/fs;
end

ensamble_avg = mean(ver);
figure(1);
plot(t, ensamble_avg); 
title("Average Ensemble of VER signal");
xlabel("Time (ms)");

figure(2); 
plot(t, ver(1,:)); % plot individual ver
title("Individual (First) VER signal");
xlabel("Time (ms)");
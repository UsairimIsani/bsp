% Source: record mitdb/100
% val has 2 rows (signals) and 3600 columns (samples/signal)
% Duration:     0:10
% Sampling frequency: 360 Hz  Sampling interval: 0.002777777778 sec
% Row	Signal	Gain	Base	Units
% 1	MLII	200	0	mV
% 2	V5	200	0	mV

% To convert from raw units to the physical units shown
% above, call the 'rdmat.m' function from the wfdb-matlab
% toolbox: https://physionet.org/physiotools/matlab/wfdb-app-matlab/

clc;
clear all;
close all;
load("100m.mat");
fs = 360;
ts = 1/fs;
units = "mV";
N = 3600;
t = (1:N)/fs;

gain = 200;
figure(1)
plot(t,val(1,:));
xlabel("Time (sec)");
ylabel("Amplitude (mV)");


clear all;
close all;
clc;

load Subject00_1_edfm

D = zeros(2,5000);
val = val';
D = val(:, 1:3); % correlation between 3 EEG leads
r = corrcoef(D); % corr using this func
disp(r)
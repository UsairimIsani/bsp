clear all;
close all;
clc;

load Subject00_1_edfm

for i = 1:22
   m(i) = mean(val(i,:));
end

figure(1);
stem(1:22, m);
title("Mean of All (22) EEG leads during mental arithmetic task");
xlabel("Lead number");
ylabel("Mean amplitude");
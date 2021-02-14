clear all;
close all;
clc;

load Hr_pre; %Load normal HR data
[c,lags] = xcov(hr_pre,'coeff');
x=c';

% Plot and label data.
plot(lags,x,'k');
hold on
plot([lags(1), lags(end)], [0 0],'k'); % Plot a zero line
xlabel('Lags','FontSize',14);
ylabel('Auto-covariance','FontSize',14);
axis([0 30 -.2 1.2]);
title('Auto covariance function of the heart rate under normal resting conditions');
grid on;
clear all;
close all;
clc;

load Hr_pre % Premeditative HR load Hr_med  % Meditative HR
load  Hr_med

% Calculate the averages and standard deviations
Avg_pre = mean(hr_pre)  % Average pre HR
SD_pre = std(hr_pre)    % Standard deviation pre
Avg_med = mean(hr_med)  % Average and std meditative HR
SD_med = std(hr_med)
subplot(1,2,1);
plot(t_pre,hr_pre,'k'); % Plot heart rate data
xlabel('Time (sec)','FontSize',14);
ylabel('HR (beats/sec)','FontSize',14);
axis([t_pre(1) t_pre(end) 0 120]);
title('Preliminary HR','FontSize',14);
subplot(1,2,2);
plot(t_med,hr_med,'k'); % Plot heart rate data
xlabel('Time (sec)','FontSize',14);
ylabel('HR (beats/sec)','FontSize',14);
axis([t_med(1) t_med(end) 0 120]);

title('Medatative HR','FontSize',14);
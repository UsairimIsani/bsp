load Hr_med; %Load normal HR data
[c,lags] = xcov(hr_med,'coeff');
x=c';

% Plot and label data.
plot(lags,x,'k');
hold on
plot([lags(1), lags(end)], [0 0],'k'); % Plot a zero line
xlabel('Lags','FontSize',14);
ylabel('Auto-covariance','FontSize',14);
axis([0 900 -1 1]);
title('Auto covariance function of the heart rate under meditative conditions');
grid on;
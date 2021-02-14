% Sine and cosine signals 
fy=1; 
%signal frequency in Hz
wy=2*pi*fy; 
%signal frequency in rad/s 
fs=60; 
%sampling frequency in Hz 
tiv=1/fs; 
%time interval between samples;
t=0:tiv:(3-tiv); 
%time intervals set 
ys=sin(wy*t); 
%signal data set 
plot(t,ys,'k'); hold on; %plots figure 
axis([0 3 -1.5 1.5]);
xlabel('seconds'); 
yc=cos(wy*t); %signal data set 
plot(t,yc,'--k'); 
%plots figure
axis([0 3 -1.5 1.5]);
xlabel("seconds");
title("sine (solid) and cosine(dashed)");

n1=input('Enter the no of samples'); 
x1=[-n1:1:n1];
y1=[zeros(1,n1),ones(1,1),zeros(1,n1)]; 
subplot(2,3,1);
stem(x1,y1); 
xlabel('Time Period'); 
ylabel('Amplitude');
title('Unit Impulse Signal');

%Unit Step Signal% 
n2=input('Enter the no of samples'); 
x2=[0:1:n2];
y2=ones(1,n2+1); subplot(2,3,2);
stem(x2,y2); xlabel('Time Period'); ylabel('Amplitude'); title('Unit Step Signal');
%Unit Step Signal% 
n2=input('Enter the no of samples'); 
x2=[0:1:n2];
y2=ones(1,n2+1); subplot(2,3,2);
stem(x2,y2); xlabel('Time Period'); ylabel('Amplitude'); title('Unit Step Signal');

%Unit Step Signal% 
n2=input('Enter the no of samples'); 
x2=[0:1:n2];
y2=ones(1,n2+1); 
subplot(2,3,2);
stem(x2,y2); xlabel('Time Period'); ylabel('Amplitude');
title('Unit Step Signal');

%Unit Step Signal% 
n2 = input('Enter the no of samples'); 
x2 = 0:1:n2;
y2 = ones(1,n2+1); 
subplot(2,3,2);
stem(x2,y2); xlabel('Time Period'); ylabel('Amplitude');
title('Unit Step Signal');

% Multiplication of sines signal 
fx=70; %signal frequency in Hz
wx=2*pi*fx; %signal frequency in rad/s 
fz=2; %signal frequency in Hz 
wz=2*pi*fz; %signal frequency in rad/s 
fs=6000; %sampling frequency in Hz 
tiv=1/fs; %time interval between samples;
t=0:tiv:(1-tiv); %time intervals set (1 second) 
y=sin(wx*t).*sin(wz*t); %signal data set 
plot(t,y,'k'); %plots figure
axis([0 1 -1.5 1.5]);
xlabel('seconds'); title('multiplication of sines signal');

function []=zhouqi()
N=48;L=512;f0=50;fs=800;
T=1/fs;
t=(0:N-1)*T;
x=cos(2*pi*f0*t);

subplot(1,3,1);
plot(t,x);
title('余弦周期信号时域波形图');
xlabel('t/s');
ylabel('信号值');
ws=2*pi*fs;
X=fftshift(fft(x,L));
w=-ws/2+(0:L-1)*ws/L;

subplot(1,3,2);
plot(w/pi,abs(X));
title('余弦周期信号频域相位谱');
xlabel('f/Hz');
ylabel('相位谱');

subplot(1,3,3);
plot(w/pi,angle(X));
title('余弦周期信号频域幅度谱');
xlabel('f/Hz');
ylabel('幅度谱');
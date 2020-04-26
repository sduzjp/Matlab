function []=zhouqi()
N=48;L=512;f0=50;fs=800;
T=1/fs;
t=(0:N-1)*T;
x=cos(2*pi*f0*t);

subplot(1,3,1);
plot(t,x);
title('���������ź�ʱ����ͼ');
xlabel('t/s');
ylabel('�ź�ֵ');
ws=2*pi*fs;
X=fftshift(fft(x,L));
w=-ws/2+(0:L-1)*ws/L;

subplot(1,3,2);
plot(w/pi,abs(X));
title('���������ź�Ƶ����λ��');
xlabel('f/Hz');
ylabel('��λ��');

subplot(1,3,3);
plot(w/pi,angle(X));
title('���������ź�Ƶ�������');
xlabel('f/Hz');
ylabel('������');
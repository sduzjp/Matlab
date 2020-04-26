function []=zhouqi2()
x1=ones(1,2);
x2=[x1,zeros(1,6)];
x=10*x2;%所求的周期脉冲信号
N=8;%长度为8
n=[0:1:N-1];
k=[0:1:N-1];
WN=exp(-j*2*pi/N);
nk=n'*k;
WNnk=WN.^nk;
Xk=x*WNnk;
magXk=abs([Xk(N/2+1:N),Xk(1:N/2+1)]);
subplot(2,1,1);stem(n,x);%画出周期脉冲信号
subplot(2,1,2);stem(k,magXk);
xlabel('k');ylabel('Xtilde(k)');
title('DFS of SQ.wave :L=2,N=8')%该信号频谱图
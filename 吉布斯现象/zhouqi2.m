function []=zhouqi2()
x1=ones(1,2);
x2=[x1,zeros(1,6)];
x=10*x2;%��������������ź�
N=8;%����Ϊ8
n=[0:1:N-1];
k=[0:1:N-1];
WN=exp(-j*2*pi/N);
nk=n'*k;
WNnk=WN.^nk;
Xk=x*WNnk;
magXk=abs([Xk(N/2+1:N),Xk(1:N/2+1)]);
subplot(2,1,1);stem(n,x);%�������������ź�
subplot(2,1,2);stem(k,magXk);
xlabel('k');ylabel('Xtilde(k)');
title('DFS of SQ.wave :L=2,N=8')%���ź�Ƶ��ͼ
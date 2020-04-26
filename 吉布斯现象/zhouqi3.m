function []=zhouqi3()
    t=-1:0.001:1;ft=square(2*pi*t,50);
    subplot(1,2,1),plot(t-0.25,ft),grid on
    axis([-1,1,-1.5,1.5])
    title('矩形脉冲周期信号')
    n=-30:30;
    T=1;tau=0.5;
    w1=2*pi/T;
    x=n*tau/T;
    fn=tau/T*sinc(x);
    subplot(1,2,2);
    plot(n*w1,fn),grid on
    name1=strcat('\tau =',num2str(tau));
    name2=strcat(name1, ',T =');
    name=strcat(name2,num2str(T));
    title(name)

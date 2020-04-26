function []=test2(t,T)
n=-30:30;
w1=2*pi/T;
x=n*t/T;
fn=t/T*sinc(x);
stem(n*w1,fn),grid on
name1=strcat('\tau = ',num2str(t));
name2=strcat(name1, ',T = ');
name=strcat(name2,num2str(T));
title(name)
end
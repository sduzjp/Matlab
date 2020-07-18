x=0:0.01:1;
t0=clock;
y=x.^100;
plot(x,y)
t1=clock;
etime(t1,t0)
hold on

t2=clock;
y1=x.^1000;
plot(x,y1,'g--')
t3=clock;
etime(t3,t2)
hold on

t4=clock;
y2=x.^10000;
plot(x,y2,'r--')
t5=clock;
etime(t5,t4)
legend('x^{100}','x^{1000}','x^{10000}');

xlabel('x')
ylabel('y')
title('Error probability')

hold off
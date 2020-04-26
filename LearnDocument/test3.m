x=0:pi/100:2*pi;
y=sin(x);
plot(x,y)

hold on

y2=cos(x);
plot(x,y2,':')
legend('sin','cos')

xlabel('x')
ylabel('y')
title('zjpnb')

hold off
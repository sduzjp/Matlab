x=-10:0.1:10
y=sin(x)
plot(x,y)
y0=fft(y)
%plot(x,abs(y0))
%plot(x,angle(y0))
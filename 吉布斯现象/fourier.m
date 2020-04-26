function F=fourier
syms x;
T=input('T=')
n=10;
t=0:0.001:16;
f=max(square(pi*0.5*t,50),0)
plot(t,f)
grid on
hold on
axis([0 4*pi -0.5 1.5])
A0=1/2
F=0
Fx=0
for i=1:n
    AS=int(2*cos(2*pi*i*x/T)/T,x,0,T/2)
    BS=int(2*sin(2*pi*i*x/T)/T,x,0,T/2)
    F=F+AS*cos(2*pi*i*t/T)+BS*sin(2*pi*i*t/T)
    Fx=Fx+AS*cos(2*pi*i*x/T)+BS*sin(2*pi*i*x/T)
end
F=F+A0
Fx=Fx+A0
Fx
plot(t,F)

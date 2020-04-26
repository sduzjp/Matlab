function []= jibusi(N)
t=-2:0.001:2;
c0=0.5;
xN=c0*ones(1,length(t));
for n =1:2:N
    xN=xN+cos(pi*n*t)*sinc(n/2);
end
plot(t,xN);


clear;
close all;
clc;
t=-2:0.01:2;
T=[15,25,51,101]
for k = 1:length(T)
    a=0;
    for n = 1:2:T(k)
        b=exp(1i*n*pi*t)/n
        a=a+b
    end
    y=2*a/(1j*pi);
    x=0.5*square(pi*t);
    figure;
    p=plot(t,real(y),t,x);
    axis([-2,2,-0.8,0.8]);
    set(gca,'XTick',-2:1:2)
    set(gca,'YTick',-0.8:0.4:0.8)
    set(gca,'XTickLabel',{'-2','-1','0','1','2'})
    set(gca,'YTickLabel',{'-0.8','-0.4','0','0.4','0.8'})
    xlabel('�Ա���')
    ylabel('����ֵ')
    titlemsg=sprintf('����˹����N=%d�ĺϳɲ���',T(k));
    title(titlemsg)
    text(0,-0.5,'\leftarrow ��������','HorizontalAlignment','left')
    set(gcf,'Color','w')
    %hold on 
end

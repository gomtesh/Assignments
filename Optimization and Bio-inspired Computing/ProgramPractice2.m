clear all;
clc;

%f = @(x)(2*x^3-2.5*x-5);    %a=1,b=2
%f = @(x)(x^3-x-1);      %a=1,b=2
%f = @(x)(x^2-3);    %a=1,b=2
%f = @(x)(exp());    %a=,b=
%f = @(x) (5* sin(x)^2 - 8*cos(x)^5) %a=0.5,b=1.5

f = @(x)(x^2-5);    %a=0,b=4

a=0;
b=4;

f(a)
f(b)

x=a:0.01:b;
for i1=1:length(x)
    y(i1)=f(x(i1));
end

figure(1)
plot(x, y, 'r.', 'LineWidth',2)
xlabel('x', 'FontSize', 14);
ylabel('y', 'FontSize', 14);
xlim([-1 3]);
title('sin(x)', 'FontSize', 14)
grid on



ya=f(a);
yb=f(b);

for i1=1:1000
    c=(a+b)/2
    yc=f(c)
    
    if(abs(yc)<0.0001)
        istop=i1;
        break;
    else
        if(yc*ya>0)
            a=c;
        else
            b=c;
        end
    end
end


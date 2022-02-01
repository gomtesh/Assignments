clear all;
clc;
%@(x) ( x^2 + 16/x);
f = input("enter function");
%f =@(x) ( x^2 + 16/x);
%a =0.1;
%b =5.1;
%n=10;
a=input("enter value of lower bound");
b=input("enter value of uppper bound");
n=input("enter value of N");

x = a: 0.10:b;
for i=1:length(x)
    y(i) = f(x(i));
end

plot(x, y,'-b','LineWidth',1);
grid on;

d = (b-a)/n;
x1=a;
x2=x1+d;
x3=x2+d;
fx1=f(x1);
fx2=f(x2);
fx3=f(x3);

while (x3<=b)
   
    if(fx1>=fx2 && fx2<=fx3)
        fprintf('the minimum point lies in interval %f and %f',x1,x3)
        break;
   else
    x1=x2;
    x2=x3;
    x3=x2+d;
    fx1=f(x1);
    fx2=f(x2);
    fx3=f(x3);
    end
end

disp(['fx2 = ', num2str(fx2) ]);
hold on;
plot(x1, fx1,"-ro",'LineWidth',5);
plot(x3, fx3,"-ro",'LineWidth',5);
xlabel('x', 'FontSize', 14);
ylabel('y', 'FontSize', 14);
title(' x^2 + 16/x', 'FontSize', 14)

    
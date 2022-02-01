clear all;
clc;
%@(x) ( x^2 + 16/x);
f = input("enter function");
%f =@(x) ( x^2 + 16/x);
%a =0.1;
%b =5.1;
%n=10;
x0=input("enter value of x0");
d=input("enter value delta value");
xl=x0-d;
xr=x0+d;
k=0;

x = x0: 0.10:5;
for i=1:length(x)
    y(i) = f(x(i));
end

%plot(x, y,'-b','LineWidth',1);
%grid on;

if (f(xl)>= f(x0) && f(x0)>=f(xr))
    d=+d;
elseif (f(xl)<= f(x0) && f(x0)<=f(xr))
    d=-d;
end
xk=x0;
xknext=xk+(2^k)*d;
xkpev=0;
while(f(xknext)<f(xk))
    k=k+1;
    xkpev=xk;
    xk=xknext;
    xknext=xk+(2^k)*d;  
end
fprintf('minimum lies between %f and %f',xkpev,xknext)





disp(['xk = ', num2str(f(xk)) ]);
hold on;
plot(xkpev, xkpev,"-ro",'LineWidth',5);
plot(xknext, xknext,"-ro",'LineWidth',5);
xlabel('x', 'FontSize', 14);
ylabel('y', 'FontSize', 14);
title(' x^2 + 16/x', 'FontSize', 14)

    
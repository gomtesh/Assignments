clear all;
clc;
%@(x) ( x^2 + 54/x);
f = input("enter value");
a =0;
b =5;

x = a: 0.10:b;
for i=1:length(x)
    y(i) = f(x(i))
end

plot(x, y,'-b','LineWidth',1);
grid on;

xmin = a+ (b-a)*rand();
fx_min = f(xmin);

for itr=1:1000
    x2 = a + (b-a)*rand();

    fx2 = f(x2);

    if(fx2<fx_min)
        fx_min= fx2;
        xmin = x2;
    end
end

disp(['fx_min = ', num2str(fx_min) ]);
hold on;
plot(x2, fx2,"-ro",'LineWidth',5);
xlabel('x', 'FontSize', 14);
ylabel('y', 'FontSize', 14);
title(' x^2 + 54/x', 'FontSize', 14)

    
clear all;

x1=-15:0.1:15;
y1=sin(x1);

figure(1)
plot(x1, y1, 'r', 'LineWidth',2)
xlabel('x', 'FontSize', 14);
ylabel('y', 'FontSize', 14);
xlim([-15 15]);
title('sin(x)', 'FontSize', 14)


x2=-15:0.1:15;
y2=cos(x2);

figure(2)
plot(x2, y2, 'r', 'LineWidth',2)
xlabel('x', 'FontSize', 14);
ylabel('y', 'FontSize', 14);
xlim([-15 15]);
title('cos(x)', 'FontSize', 14)

x3=-15:0.1:15;
y3=sin(x3)./x3;

figure(3)
plot(x3, y3, 'r', 'LineWidth',2)
xlabel('x', 'FontSize', 14);
ylabel('y', 'FontSize', 14);
xlim([-15 15]);
title('sinc(x)', 'FontSize', 14)


x4=-10:0.1:10;
y4=exp(-x4.^2);

figure(4)
plot(x4, y4, 'r', 'LineWidth',2)
xlabel('x', 'FontSize', 14);
ylabel('y', 'FontSize', 14);
xlim([-15 15]);
ylim([-inf 1.2]);
title('Gaussian function', 'FontSize', 14)



a=0; b=1.0;
x5=-10:0.1:10;
y5=(1/pi)*b./((x5-a).^2+b^2);

figure(5)
plot(x5, y5, 'r', 'LineWidth',2)
xlabel('x', 'FontSize', 14);
ylabel('f(x)', 'FontSize', 14);
xlim([-15 15]);
ylim([0 0.4]);
title('Lorentzian function', 'FontSize', 14)



x6=0.01:0.1:15;
y6=log(-x6);

figure(6)
plot(x6, y6, 'r-.', 'LineWidth',2)
grid on;
xlabel('x', 'FontSize', 14);
ylabel('f(x)', 'FontSize', 14);
xlim([-15 15]);
ylim([-inf inf])
title('log(x)', 'FontSize', 14)



x7=-10:0.1:10;
y7=zeros(1, length(x7));
for i1=1:length(x7)
    if(x7(i1)<0)
        y7(i1)=-1;
    else
        y7(i1)=1;
    end
end
    
figure(7)
plot(x7, y7, 'r-.', 'LineWidth',2)
grid on;
xlabel('x', 'FontSize', 14);
ylabel('y', 'FontSize', 14);
xlim([-15 15]);
ylim([-1.2 1.2])
title('signum(x)', 'FontSize', 14)


x8=0:0.1:4;
y8=exp(-x8);
    
figure(8)
plot(x8, y8, 'r', 'LineWidth',2)
grid on;
xlabel('x', 'FontSize', 14);
ylabel('y', 'FontSize', 14);
xlim([-15 15]);
ylim([-inf 1.2])
title('exp(-x)', 'FontSize', 14)

x9=-10:0.1:10;
y9=exp(-abs(x9));
    
figure(9)
plot(x9, y9, 'r', 'LineWidth',2)
grid on;
xlabel('x', 'FontSize', 14);
ylabel('y', 'FontSize', 14);
xlim([-15 15]);
ylim([-inf 1.2])
title('exp(-|x|)', 'FontSize', 14)


clear;
clc;
x=[1,2,3,4,5];
y=[2,5,3,8,7];
xx=x.*x;
xy=x.*y;
N=5;
sx=sum(x);
sy=sum(y);
sxx=sum(xx);
sxy=sum(xy);
m=(sxy*N - sx*sy)/(N*sxx-sx*sx)
c= (sxx*sy-sxy*sx)/(N*sxx-sx*sx)
xfit=[1,2,3,4,5];
yfit=m*xfit+c;

figure(1)
plot(x, y, 'r*', 'MarkerSize',12)
hold on 
plot(xfit,yfit,'LineWidth',6)
xlabel('x', 'FontSize', 14);
ylabel('y', 'FontSize', 14);
title('', 'FontSize', 14)
xlim([0 6])
ylim([0 12])
grid on
clear all;
f = @(x) (5* sin(x)^2 - 8*cos(x)^2)
a=0.5;
b=1.5;

ya=f(a);
yb=f(b);
for i1=1:1000
    c=(a+b)/2
    yc=f(c)
    if(abs(yc)<0.0001)
        isstop=i1;
        break;
    else
        if (yc*ya>0)
            a=c;
        else
            b=c;
        end
    end
end

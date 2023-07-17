clc
clear all
close all

f=inline('cos(exp(x)-2)-exp(x)+2');
xl=0.5;
xh=1.5;
tol=1e-5;
error=1;
i=1;
while(error>tol)
    disp('___________________')
    i
    xl
    xh
    xr=(xl*f(xh)-xh*f(xl))/(f(xh)-f(xl))
    fxr=f(xr)
    
    if(i==1)
        if(f(xr)*f(xl)<f(xr)*f(xh))
           xh=xr;
           temp=xr;
        else
            xl=xr;
            temp=xr;
        end
    else if(i==2)
        xl=temp;
        xh=xr;
        error=abs((xh-xl)/xh)
    else
        xl=xh;
        xh=xr;
        error=abs((xh-xl)/xh)
        end
    end
    
    i=i+1;
end
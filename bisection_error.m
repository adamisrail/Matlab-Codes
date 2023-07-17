clc
clear all
close all

f=inline('(667.38/c)*(1-exp(-.1468*c))-40');
xl=12;
xh=16;
tol=1e-3;
error=1;
i=1;
while(error>tol)
    disp('___________________')
 
    xr=(xl+xh)/2
    fxr=f(xr);
    if(f(xr)*f(xl)<f(xr)*f(xh))
       xh=xr;
    else
        xl=xr;
    end
    if(i>1)
        error=abs((xr-temp)/xr)
    end
    temp=xr;
    i=i+1;
end
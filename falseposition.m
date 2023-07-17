clc
clear all
close all

f=inline('(667.38/c)*(1-exp(-.1468*c))-40');
xl=12;
xh=16;
n=5;

for i=1:1:n
    disp('___________________')
    i
    xl
    xh
    xr=(xl*f(xh)-xh*f(xl))/(f(xh)-f(xl))
    fxr=f(xr)
    if(f(xr)*f(xl)<f(xr)*f(xh))
       xh=xr;
    else
        xl=xr;
    end
    
end
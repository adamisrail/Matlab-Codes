clc
clear all
close all

h=0.01;
x0=0;
y0=1;
f=inline('1+4*x*y^(1/2)','x','y');
xf=1;

ind=1;
x=x0;
y=y0;
for i=x0+h:h:xf
       
    y(ind+1)=y(ind)+h*f(x(ind),y(ind));
    x(ind+1)=x(ind)+h;
    ind=ind+1;
end

Result=[x' y']



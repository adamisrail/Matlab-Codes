clc
clear all
close all

h=0.2;
x0=0;
y0=1;
f=inline('1+4*x*y^(1/2)','x','y');
xf=1;

ind=1;
x=x0;
y=y0;
for i=x0+h:h:xf
      
    k1=f(x(ind),y(ind));
    k2=f(x(ind)+(h/2),y(ind)+(h/2)*k1);
    k3=f(x(ind)+(h/2),y(ind)+(h/2)*k2);
    k4=f(x(ind)+h,y(ind)+h*k3);
    
    y(ind+1)=y(ind)+(h/6)*(k1+2*k2+2*k3+k4);
    x(ind+1)=x(ind)+h;
    ind=ind+1;
end

Result=[x' y']



clc
clear all
close all
format short

x=[0 10 15 20 22.5 30];
y=[0 227.04 362.75 517.35 602.97 901.68];
y=[y' zeros(length(x),length(x)-1)];
x0=16;

ind=0;
for i=2:length(x)
    for j=i:length(x)
        y(j,i)=((x0-x(j+ind-1))*y(j,i-1)-(x0-x(j))*y(j-1,i-1))/(x(j)-x(j+ind-1));
    end
    ind=ind-1;
end

y
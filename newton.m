clc
clear all
close

f=inline('(667.38/c)*(1-exp(-.1468*c))-40');
x0=13;
n=5;
syms c;
fdx=diff('(667.38/c)*(1-exp(-.1468*c))-40',c);
fd=inline(fdx);


for i=1:1:n
    disp('_____________________')
    i
    x0=x0-(f(x0)/fd(x0))
    fx0=f(x0)
end
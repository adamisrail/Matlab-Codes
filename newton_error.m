clc
clear all
close

f=inline('(667.38/c)*(1-exp(-.1468*c))-40');
x0=13;
tol=1e-5;
error=1;
syms c;
fdx=diff('(667.38/c)*(1-exp(-.1468*c))-40',c);
fd=inline(fdx);
i=1;

while(error>tol)
    disp('_____________________')
    i
    x0=x0-(f(x0)/fd(x0))
    fx0=f(x0)
    if(i>1)
       error=abs((x0-temp)/x0)
    end
    temp=x0;
    i=i+1;
end
clear all
close all
clc

f=inline('cos(exp(x)-2)-exp(x)+2');
a=0.5;
b=1.5;
tol=1e-5;
error=1;
i=1;

while (error > tol)
    
    c=(a*f(b)-b*f(a))/(f(b)-f(a));
    fc = f(c);

    if(i==1)
    
        if(f(a)*f(c) < f(b)*f(c))
           b=c;
           temp = c;
        else
            a=c;
            temp =c;
        end
    
    else if (i==2)
            a=temp;
            b=c;
            error= abs((b-a)/b)    
        
    else
        a=b;
        b=c;
        error = abs((b-a)/b)
        end       
    end
    
    i=i+1;
end

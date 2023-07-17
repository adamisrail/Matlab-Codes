clc
clear all
close all

A=[3 -2  1; 1 -3 2 ;-1 2 4]
% A=input('Enter Input Matrix: ');

sum=0;flag=1;
for i=1:length(A)
    for j=1:length(A)
        if(j==i)
            continue;
        end
        sum=sum+abs(A(i,j));
    end
    
    if(abs(A(i,i))<sum)
       flag=0;
       break;
    end
    sum=0;
end 

if(flag==1)
    disp('Matrix is Convergent')
    Option=input('1 for Jacobi and 2 for Gauss-seidal: ');
    x=0;y=0;z=0;
    if (Option==1)
    for i=1:5
       x(i+1)=(10+2*y(i)-z(i))/3;
       y(i+1)=-(12-x(i)-z(i))/3;
       z(i+1)=(18+x(i)-2*y(i))/4  ;       
    end
    
    Output=[x' y' z']
    else if(Option==2)
       for i=1:5
        disp('_________________')
        i
       x=(10+2*y-z)/3
       y=-(12-x-z)/3
       z=(18+x-2*y)/4       
       end 
        end
    end
else
    disp('Matrix is Non-Convergent')
end




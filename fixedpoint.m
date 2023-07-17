clc
clear all
close all

f=inline('x^2-2*x-3')
x0=0.4;
n=10;
g1='(2*x+3)^(1/2)';
% g1='(x^2-3)/2'
gx1=inline(g1);
syms x;
gd1=diff(g1,x);
gdx1=inline(gd1)

if(abs(gdx1(x0))<=1)
   disp('Function is Convergent')   
   for i=1:1:n
       disp('___________________')
       i
       x0=gx1(x0)
   end
else
    disp('Function is Non-Convergent')   
end

%Verification of Root
f_acutal=f(x0)
clc
clear all
close all

f=inline('pi*sin(pi*x)')
% f=inline('x*log(x)')
SL=2.5;
EL=3;
%% Trapezoidal Rule
h=0.5;
TR=(h/2)*(f(SL)+f(EL))

%% Simpson Rule
h=0.25;
SR=(h/3)*(f(SL)+4*f(SL+h)+f(EL))

%% 3/8 Simpson Rule
h=0.125;
SR=((3*h)/8)*(f(SL)+3*f(SL+h)+3*f(SL+2*h)+3*f(EL))


%% Composite Trapezoidal
h=0.1;
sum=0;sp=h;
for i=1:((EL-SL)/h)-1
    sum=sum+f(SL+sp);
    sp=sp+h;
end

CTR=(h/2)*(f(SL)+2*sum+f(EL))


%% Actual
g='pi*sin(x*pi)';
syms x
Actual=eval(int(g,x,[2.5 3]))




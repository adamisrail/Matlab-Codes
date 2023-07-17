clc
clear all
close all

f=inline('log(x)');
x0=1.8;
h=0.1;

%% Two point formula
TPF=(f(x0+h)-f(x0))/h

%% Three Point Forward difference
TPFD=(1/(2*h))*(-3*f(x0)+4*f(x0+h)-f(x0+2*h))

%% Three Point Backward Difference
TPBD=(1/(2*h))*(3*f(x0)-4*f(x0-h)+f(x0-2*h))

%% Three Point Central Difference
TPCD=(1/(2*h))*(f(x0+h)-f(x0-h))

%% Five Point Central Difference
FPCD=(1/(12*h))*(f(x0-2*h)-8*f(x0-h)+8*f(x0+h)-f(x0+2*h))


%% Actual 
g='log(x)';
syms x
gdx=diff(g,x);
gd=inline(gdx);
Actual=gd(x0)






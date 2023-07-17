clear all
clc
close all

A=[1 3 -2 ; 3 5 6; 2 4 3]
B=[ 5; 7;8]
C=[A B]

Output=rref(C)

for i=1:length(A)-1
    for j=i+1:length(A)
 
    Con=-C(j,i)/C(i,i);
    C(j,:)=Con*C(i,:)+C(j,:);
    end
end

for i=length(A):-1:2
    for j=i-1:-1:1
     Con=-C(j,i)/C(i,i);
    C(j,:)=Con*C(i,:)+C(j,:);
    end
end

for i=1:length(A)

Out(i)=C(i,end)/C(i,i);
end
 

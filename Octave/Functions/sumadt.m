function [y,t] = sumadt(x1,t1,x2,t2,dt)
% implementa la suma y(n)= x1(n)+x2(n)
%-------------------
% [y,n]= suma(x1,n1,x2,n2)
% y = suma de x1 y x2 sobre n, que incluye n1 y n2
% x1 = primera señal sobre n1
% x2 = segunda señal sobre n2 (n2 puede ser diferente de n1)
%
t = min(min(t1),min(t2)):dt:max(max(t1),max(t2));
y1 = zeros(1,length(t)); y2=y1;
%
y1(find((t>=min(t1))&(t<=max(t1))==1))=x1;
%
y2(find((t>=min(t2))&(t<=max(t2))==1))=x2;
%
y = y1+y2;
function [y,n] = suma(x1,n1,x2,n2)
% implementa la suma y(n)= x1(n)+x2(n)
%-------------------
% [y,n]= suma(x1,n1,x2,n2)
% y = suma de x1 y x2 sobre n, que incluye n1 y n2
% x1 = primera se�al sobre n1
% x2 = segunda se�al sobre n2 (n2 puede ser diferente de n1)
%
n = min(min(n1),min(n2)):max(max(n1),max(n2)); % duraci�n de y(n)
y1 = zeros (1, length(n)); y2 = y1; %inicializaci�n.
%
y1(find((n>=min(n1))&(n<=max(n1))==1))=x1; % x1 con duraci�n de y.
%
y2(find((n>=min(n2))&(n<=max(n2))==1))=x2; % x2 con duraci�n de y
%
y = y1+y2;
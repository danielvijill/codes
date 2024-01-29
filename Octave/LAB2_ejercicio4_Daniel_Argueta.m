% LABORATORIO 2
% EJERCICIO 4

%=============================================================================

function [x,t]=impulsodt(t0, t1, t2, dt)
  % Genera x(t) = delta(t -t0); t1 <= t <= t2 con frec. de muestreo 1/dt
  % ---------------------------
  % [x,t] = impulso(t0,t1,t2,dt)
  %
 t = [t1:dt:t2]; x = [(t - t0) == 0];
end
%
function [x,t]=escalondt(t0,t1,t2,dt)
% Genera x(t) = u(t -t0); t1 <= t <= t2 con frec. de 1/dt
% -------------------------------------------
% [x,t] = escalon(t0,t1,t2)
%
t = [t1:dt:t2]; x = [(t - t0) >= 0];
end
%
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
end
%
function [y,n] = mult(x1,n1,x2,n2,dt)
  % implementa el producto y(n)=n1(n)*x2(n)
  % ------------------
  % [y,n]= mult(x1,n1,x2,n2)
  % y = multiplicación de x1 y x2 sobre n, que incluye n1 y n2
  % x1 = primera señal sobre n1
  % x2 = segunda señal sobre n2 (n2 puede ser diferente de n1)
  % n = min(min(n1), min(n2)):max(max(n1) ,max(n2)); %duración de y(n)
  t = min(min(t1),min(t2)):dt:max(max(t1),max(t2));
  %
  y1 = zeros (1, length(t)); y2 = y1;
  %
  y1(find((t>=min(t1))&(t<=max(t1))==1))=x1;
  y2(find((t>=min(t2))&(t<=max(t2))==1))=x2;
  %
  y = y1.*y2;
end
%

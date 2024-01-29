% LABORATORIO 5
% EJERCICIO 4

%=============================================================================

clf;clear;
% =================================
% Construccion senal de entrada
% =================================

t=[-4:1/32:4];
b= 1 + 1/2 *cos(2*pi*t)+cos(4*pi*t) + 2/3 *cos(6*pi*t);

subplot(3,1,1)
plot(t,b);
grid;
axis([-3,3,-1,4]);
title('Onda cuadrada periodica, T_1=1,T_0=16');
ylabel('Amplitud');

% =================================
% Construccion serie de Fourier
% =================================

% Coeficiente de Fourier a0
a0=1;
y1=a0;
% Numero de coeficientes Fourier 2n+1
n=40; 
% Inicializamos serie de Fourier
F=a0;

for k=1:3;
   y1=y1+(1/(1+i*2*pi*k))*(e.^(i*k*(2*pi)*t))+...
   (1/(1-i*2*pi*k))*e.^(-i*k*(2*pi)*t);

   subplot(4,1,2);
   plot(t,y1);
   axis([-3,3,0.5,1.6]);
   title('Serie de Fourier de la salida t(t)')
   ylabel('Amplitud');
   grid;
   hold on;
   pause(0.05);
endfor

% =================================
% Respuesta al impulso h(t)
% =================================

t2=[0:1/32:5];
h=exp(-t2);
subplot(4,1,3)
plot(t2,h);
grid;
title('Respuesta al impulso h(t)')
ylabel('Amplitud');

% =================================
% Salida convolucion y(t)=x(t)*h(t)
% =================================

t1=[-20:1/64:20];
[y,ty]=convdt(1 + (1/2)*cos(2*pi*t1) + cos(4*pi*t1) + ...
 (2/3)*cos(6*pi*t1),t1,(exp(-t1)).*escalondt(0,-20,20,1/64),t1,1/64);
subplot(4,1,4);
plot(ty,y);
axis([-3,3,0.5,1.42]);
grid;
title("Salida convolucion y(t) = x(t)*h(t)");
ylabel('Amplitud');









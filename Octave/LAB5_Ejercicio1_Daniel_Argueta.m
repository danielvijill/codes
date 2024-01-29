% LABORATORIO 5
% EJERCICIO 1

%=============================================================================

clf;clear;
% =================================
%  Construccion senal de entrada
% =================================

Fs=64;% Frecuencia de muestreo
%Pulso cuadrado (par)
[bi,tb]=stepseqdt(-1,-2,2,1/Fs);
[bd,tb]=stepseqdt(1,-2,2,1/Fs);
b=bi-bd; 
%plot(tb,b)
%figure;
% Construimos extension periodica 3 periodos
[xtilde,t]= periodt(b,tb,3,1/Fs);
subplot(3,1,1)
plot(t,xtilde,'Linewidth',2);grid;
axis([-3,11,-0.2,1.2]);
set(gca,'XTick',-3:1:11);
title('Onda cuadrada periodica, T_1=1,T_0=4')
ylabel('Amplitud');
% coeficiente de Fourier a0
a0=1/2;
% numero de coeficientes Fourier 2n+1
n=10; 
% inicializamos serie de Fourier
F=a0;

% =================================
% Construccion serie de Fourier
% =================================

for k=1:n;
 F=F+((sin(k*(pi/2)))/(k*pi))*e.^(i*k*(pi/2)*t)+ ...
  ((sin(-k*(pi/2)))/(-k*pi))*e.^(i*-k*(pi/2)*t);
   subplot(3,1,2);
   plot(t,F);
   axis([-3,11,-0.2,1.2]);
   set(gca,'XTick',-3:1:11);
   title('Serie de Fourier')
   ylabel('Amplitud');
grid;
   hold on;
   pause(0.05);
endfor

% =================================
% Coeficientes de Fourier
% =================================

k=[-n:n];
ak=(sin(k*(pi/2)))./(k*pi);
ak(find(k==0))=1/2;
subplot(3,1,3)
stem(k,ak);grid;
title('Coeficientes de Fourier')
xlabel('k');ylabel('Amplitud');
set(gca,'XTick',-n:1:n);

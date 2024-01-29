% LABORATORIO 5
% EJERCICIO 3

%=============================================================================

clf;clear;
% =================================
%  Construccion senal de entrada
% =================================

Fs=64;% Frecuencia de muestreo
%Pulso cuadrado (par)
[bi,tb]=stepseqdt(-1,-8,8,1/Fs);
[bd,tb]=stepseqdt(1,-8,8,1/Fs);
b=bi-bd; 
%plot(tb,b)
%figure;
% Construimos extension periodica 3 periodos
[xtilde,t]= periodt(b,tb,3,1/Fs);
subplot(3,1,1)
plot(t,xtilde,'Linewidth',2);grid;
axis([-16,48,-0.2,1.2]);
set(gca,'XTick',-16:4:48);
title('Onda cuadrada periodica, T_1=1,T_0=16')
ylabel('Amplitud');
% coeficiente de Fourier a0
a0=1/8;
% numero de coeficientes Fourier 2n+1
n=40; 
% inicializamos serie de Fourier
F=a0;

% =================================
% Construccion serie de Fourier
% =================================

for k=1:n;
 F=F+((sin(k*(pi/8)))/(k*pi))*e.^(i*k*(pi/8)*t)+ ...
  ((sin(-k*(pi/8)))/(-k*pi))*e.^(i*-k*(pi/8)*t);
   subplot(3,1,2);
   plot(t,F);
   axis([-16,48,-0.2,1.2]);
   set(gca,'XTick',-16:4:48);
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
ak=(sin(k*(pi/8)))./(k*pi);
ak(find(k==0))=1/8;
subplot(3,1,3)
stem(k,ak);grid;
title('Coeficientes de Fourier')
xlabel('k');ylabel('Amplitud');
set(gca,'XTick',-n:5:n);


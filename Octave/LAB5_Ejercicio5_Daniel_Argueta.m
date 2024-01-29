% LABORATORIO 5
% EJERCICIO 5

%=============================================================================

clf;clear;
% =================================
%  Construccion boxcar periodico
% =================================
Fs=64;
[bi,tb]=stepseqdt(-5,-8,8,1/Fs);
[bd,tb]=stepseqdt(5,-8,8,1/Fs);
b=bi-bd;
[xtilde,t]= periodt(b,tb,3,1/Fs);
subplot(3,2,1)
plot(t,xtilde,'Linewidth',2);grid;
axis([-16,48,-0.2,1.2]);
set(gca,'XTick',-16:8:48);
title('Onda cuadrada periodica, T_1=5,T_0=16')
ylabel('Amplitud');

% =================================
%  Construccion serie de Fourier para la entrada
% =================================

a0=1/2;
% numero de coeficientes Fourier 2n+1
n=10;
% inicializamos serie de Fourier
F=a0;

% Construccion serie de Fourier
for k=1:n;
 F=F+((sin(k*(5*pi/8)))/(k*pi))*e.^(i*k*(pi/8)*t)+ ...
  ((sin(-k*(5*pi/8)))/(-k*pi))*e.^(i*-k*(pi/8)*t);
   subplot(3,2,2)
   plot(t,F);
   title('Serie de Fourier de la entrada x(t)')
   ylabel('Amplitud');
   axis([-16,48,-0.2, 1.2]);
   set(gca,'XTick',-16:4:48);
grid;
   hold on;
   pause(0.05);
endfor

% =================================
%  Construccion serie de Fourier de la salida
% =================================

a0=1/2;
% numero de coeficientes Fourier 2n+1
n=30;
% inicializamos serie de Fourier
F=a0;

% Construccion serie de Fourier
for k=1:n;
 F=F+((sin(k*(5*pi/8)))/(k*pi))*((1)/(1+i*k*(pi/8)))*e.^(i*k*(pi/8)*t)+ ...
  ((sin(-k*(5*pi/8)))/(-k*pi))*((1)/(1+i*k/20*(pi/8)))*e.^(i*-k*(pi/8)*t);
   subplot(3,2,3)
   plot(t,F+0.1);
   title('Serie de Fourier de la salida y(t)')
   ylabel('Amplitud');
   axis([-16,48,-0.2, 1.2]);
   set(gca,'XTick',-16:4:48);
   grid on;
   hold on;
   pause(0.05);
endfor


% =================================
%  Construccion respuesta al impulso h(t)
% =================================
dt = 0.25;
nh = [0:dt:10];
h =exp(-2*nh).*escalondt(0,0,10,dt);
subplot(3,2,4);
plot(nh,h,'g','Linewidth',2);
grid on;
axis([0,10,-0.2, 1.2]);
set(gca,'XTick',0:2:10);
title('Respuesta al impulso h(t) sistema LTI','FontSize', 10);
xlabel('t','FontSize', 10);
ylabel('x(t)','FontSize', 10);


% =================================
%  Construccion convolucion y(t)=x(t)*h(t)
% =================================

dtt = 0.25;
t1 =[-8:dtt:8];
x = escalondt(-5,-8,8,0.25)-escalondt(5,-8,8,0.25);
[xtilde,t]= periodt(x,t1,3,0.25);
dt = 0.25;
nh = [0:0.25:10];
h =exp(-1.15*nh).*escalondt(0,0,10,0.25);
[y,ny] = convdt(h,nh,xtilde,t,0.25);
subplot(3,2,5);
plot(ny,y,'r','Linewidth',2);
axis([-16 48 -0.2 1.2]);
set(gca,'XTick',-16:4:48);
grid on;
title('Convulucion de y(t)=x(t)*h(t)','FontSize', 10);
xlabel('t','FontSize', 10);
ylabel('x(t)','FontSize', 10);
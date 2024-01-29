# LABORATORIO 7
# EJERCICIO 6
# =====================================================================

# DATA

N=512;
R=2*randn(1,N);

Fm=8000; Tm=1/Fm;
f1=1000; f2=400;
T=(N-1)*Tm;
tp=[0:Tm:T];
Tc=(512-1)*Tm;

# =====================================================================

# SIGNAL

t1 = [tp,[tp(length(tp)):Tm:tp(length(tp))+Tc]];
xp = cos(2*pi*f1*tp) + cos(2*pi*f2*tp) + R;
x = [xp, zeros(1,512)];

# DFT

[xk,k] = dft(x, N+512);
fk = k*(Fm/(N+512));

# =====================================================================

# SAMPLES PLOT

subplot(2,1,1);
plot(t1,x,'b');
title('512 muestras de x(t) ruidosa con 512 ceros');
xlabel('tiempo en segundos');
xlim([0, 0.14]); ylim([-10, 10]);

# AMPLITUDE PLOT

subplot(2,1,2);
plot(fk,abs(xk),'b');
title('|X(f)|, N= mas 512 ceros');
xlabel('frecuencia en Hz');
xlim([0, 8000]); ylim([0, 250]);

# =====================================================================

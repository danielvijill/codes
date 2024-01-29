# LABORATORIO 7
# EJERCICIO 2
# =====================================================================

# DATA

Fm=8000; Tm=1/Fm;
N=128;
T=(N-1)*Tm;
t1=[0:Tm:T];
f1=1000; f2=400;

# =====================================================================

# SIGNAL

x=cos(2*pi*f1*t1)+cos(2*pi*f2*t1);

# DFT

[xk,k]=dft(x,N);
fk=k*(Fm/N);

# =====================================================================

# SIGNAL PLOT

subplot(3,1,1)
plot(t1,x,'b')
title("x = cos(2 \pi (1000 Hz) t)+cos(2 \pi (400 Hz) t)")
xlabel("tiempo en segundos")
xlim([0,0.02])

# AMPLITUDE PLOT

subplot(3,1,2)
stem(fk,abs(xk),'b')
title("|X(f)| con N=128")
xlabel("frecuencia en Hz")

# PHASE PLOT

subplot(3,1,3)
stem(fk,angle(xk),'b')
title(" Fase X(f) con N=128")
xlabel("frecuencia en Hz")

# =====================================================================

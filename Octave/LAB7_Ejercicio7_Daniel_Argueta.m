# LABORATORIO 7
# EJERCICIO 7
# =====================================================================

# SIGNAL

N = 4;
x1 = [1,1,1,1];
n1 = [0:1:N-1];

subplot(4,1,1);
stem(n1,x1,'b');
title('Senal original x[n]');
xlabel('tiempo en segundos');
xlim([-1,4]);

# =====================================================================

# FOURIER TRANSFORM

[xk1, nk1] = dft(x1, N);

# AMPLITUDE

subplot(4,1,2);
stem(nk1,abs(xk1),'r');
title('|X[k]|');
xlabel('frecuencia en Hz');
xlim([-1,4]);

# PHASE

subplot(4,1,3);
stem(nk1,angle(xk1),'r');
title('Fase de |X[k]|');
xlabel('frecuencia en Hz');
xlim([-1,4]);

# =====================================================================

# INVERSE FOURIER TRANSFORM

[x2, n2] = idft(xk1, N);

subplot(4,1,4);
stem(n2,x2,'b');
title('Transformada inversa (x[n])');
xlabel('tiempo en segundos');
xlim([-1,4]);

# =====================================================================
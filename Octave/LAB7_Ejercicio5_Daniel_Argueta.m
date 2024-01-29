# LABORATORIO 7
# EJERCICIO 5
# =====================================================================

# Random signal with normal distribution

N=512;
R=randn(1,N);
subplot(1,2,1);
plot(R);
title('Ruido con distribucion normal');
xlabel('Numero de muestra');
ylabel('Amplitud');

# Histogram

subplot(1,2,2);
hist(R,25); grid;
title('Histograma, distribucion normal');
xlabel('Numero de muestra');
ylabel('Total');

# =====================================================================

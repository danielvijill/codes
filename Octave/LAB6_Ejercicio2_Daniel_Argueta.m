# LABORATORIO 6
# EJERCICIO 2
# =====================================================================

# DATA

M = 800;
k = 7*10^4;

w0 = sqrt(k/M);

# =====================================================================

# Frequency Range

w=[0:1/64:10*w0];

zeta1 = 0.05;
zeta2 = 1.00;

# Frequency Response

H1 = (w0.^2 + (2*zeta1*w0*i).*w)./((i.*w).^2 +(2*zeta1*w0*i).*w + w0.^2);
H2 = (w0.^2 + (2*zeta2*w0*i).*w)./((i.*w).^2 +(2*zeta2*w0*i).*w + w0.^2);

# Bode Diagram Amplitude

x = log10(w);
y1 = 20.*log10(abs(H1));
y2 = 20.*log10(abs(H2));

subplot(2,1,1);
plot(x,y1,'b', "linewidth", 2,x,y2,'r', "linewidth", 2);
title('Amplitud en Decibeles')
legend('\zeta = 0.05' ,'\zeta = 1.0')
xlim([0.6,2]);
ylim([-40,40]);
xlabel('log10(omega)');
ylabel('20 log10 |H(omega)|');

# Bode Diagram Phase

theta1 = angle(H1);
theta2 = angle(H2);

subplot(2,1,2);
plot(x,theta1,'b', "linewidth", 2,x,theta2,'r', "linewidth", 2);
title('Diagrama de Fase')
legend('\zeta = 0.05' ,'\zeta = 1.0')
xlim([0.6,2]);
ylim([-3,0]);
xlabel('log10(omega)');
ylabel('Angulo en radianes');

# =====================================================================

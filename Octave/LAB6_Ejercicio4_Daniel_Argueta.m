# LABORATORIO 6
# EJERCICIO 4
# =====================================================================

# DATA

M = 800;
k = 7*10^4;

w0 = sqrt(k/M);
omega0 = sqrt(k/M);

# =====================================================================
# Frequency Range

w=[0:1/128:10*w0];

zeta1 = 0.05;
zeta2 = 1.00;

# =====================================================================
# Frequency Response

H1 = (w0.^2 + (2*zeta1*w0*i).*w)./((i.*w).^2 +(2*zeta1*w0*i).*w + w0.^2);
H2 = (w0.^2 + (2*zeta2*w0*i).*w)./((i.*w).^2 +(2*zeta2*w0*i).*w + w0.^2);

# =====================================================================
# Impulse Response

b1 = [2*zeta1*i*omega0, omega0^2];
a1 = [1, 2*zeta1*omega0, omega0^2];

b2 = [2*zeta2*i*omega0, omega0^2];
a2 = [1, 2*zeta2*omega0, omega0^2];

[r1, p1, k1, e1] = residue(b1,a1);
[r2, p2, k2, e2] = residue(b2,a2);

t1 = [0:1/128:10];

h1 = r1(1)*escalondt(0,0,10, 1/128).*exp(p1(1)*t1) + r1(2)*escalondt(0,0,10, 1/128).*exp(p1(2)*t1);
h2 = r2(1)*escalondt(0,0,10, 1/128).*exp(p2(1)*t1) + r2(2)*escalondt(0,0,10, 1/128).*t1.*exp(p2(2)*t1);

# =====================================================================
# Input Signals

t2 = [0:1/128:50];
x1 = cos(0.1*w0.*t2);
x2 = cos(w0.*t2);
x3 = cos(10*w0.*t2);

# =====================================================================
# Bode Diagram Amplitudes

subplot(4,2,1);
plot(log10(w),20.*log10(abs(H1)));
xlim([0.6,2]); ylim([-40,30]);
title('Amplitud en Decibeles'); grid();
xlabel('log10(\omega)'); ylabel('20 log10|H(\omega)|');
legend('\zeta=0.05');

subplot(4,2,2);
plot(log10(w),20.*log10(abs(H2)));
xlim([0.6,2]); ylim([-20,5]);
title('Amplitud en Decibeles'); grid();
xlabel('log10(\omega)'); ylabel('20 log10|H(\omega)|');
legend('\zeta=1.0');

# =====================================================================

# System Outputs

# =====================================================================
# Frequency 0.1 omega_0

[y1,ty1] = convdt(x1, t2, h1, t1, 1/128);
[y2,ty2] = convdt(x1, t2, h2, t1, 1/128);

subplot(4,2,3);
plot(ty1,y1);
xlim([0,60]); ylim([-2,2]);
title('y(t) con cos[0.1(\omega_0)t]'); grid();
xlabel('tiempo');

subplot(4,2,4);
plot(ty2,y2);
xlim([0,60]); ylim([-2,2]);
title('y(t) con cos[0.1(\omega_0)t]'); grid();
xlabel('tiempo');

# =====================================================================
# Frequency omega_0

[y3,ty3] = convdt(x2, t2, h1, t1, 1/128);
[y4,ty4] = convdt(x2, t2, h2, t1, 1/128);

subplot(4,2,5);
plot(ty3,y3);
xlim([0,60]); ylim([-15,15]);
title('y(t) con cos[(\omega_0)t]'); grid();
xlabel('tiempo');

subplot(4,2,6);
plot(ty4,y4);
xlim([0,60]); ylim([-1,1]);
title('y(t) con cos[(\omega_0)t]'); grid();
xlabel('tiempo');

# =====================================================================
# Frequency 10 omega_0

[y5,ty5] = convdt(x3, t2, h1, t1, 1/128);
[y6,ty6] = convdt(x3, t2, h2, t1, 1/128);

subplot(4,2,7);
plot(ty5,y5);
xlim([0,60]); ylim([-0.04,0.04]);
title('y(t) con cos[10(\omega_0)t]'); grid();
xlabel('tiempo');

subplot(4,2,8);
plot(ty6,y6);
xlim([0,60]); ylim([-0.015,0.015]);
title('y(t) con cos[10(\omega_0)t]'); grid();
xlabel('tiempo');

# =====================================================================
# Commentary

# If we observe for a correlation, as we go further in
# frequencies, the amplitudes of the outputs y(t) vary
# as a function of the amplitude bode diagram.

# =====================================================================

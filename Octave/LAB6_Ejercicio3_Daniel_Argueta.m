# LABORATORIO 6
# EJERCICIO 3
# =====================================================================

#Data

M = 800;
k = 7*10^4;
omega = sqrt(k/M);
zeta1 = 0.05;
zeta2 = 1.00;

# =====================================================================
# H(iw) coefficients

b1 = [2*zeta1*i*omega, omega^2];
a1 = [1, 2*zeta1*omega, omega^2];

b2 = [2*zeta2*i*omega, omega^2];
a2 = [1, 2*zeta2*omega, omega^2];

# =====================================================================
# Partial Fractions Decomposition

[r1, p1, k1, e1] = residue(b1,a1);
[r2, p2, k2, e2] = residue(b2,a2);

# We get something of the forms:

#       r(1)             r(2)
# --------------  + --------------
#  (-p(1) + iw)      (-p(2) + iw)

# And

#       r(1)             r(2)
# --------------  + --------------
#  (-p(1) + iw)      (-p(2) + iw)^2

# Having the knowledge of the fourier transform pairs
#                     1
# u(t)e^(-at) <->  --------
#                   (a+iw)

# And

#                     1
# u(t)te^(-at) <->  --------
#                   (a+iw)^2


# We get
t1 = [0:1/32:10];
h1 = r1(1)*escalondt(0,0,10, 1/32).*exp(p1(1)*t1) + r1(2)*escalondt(0,0,10, 1/32).*exp(p1(2)*t1);
h2 = r2(1)*escalondt(0,0,10, 1/32).*exp(p2(1)*t1) + r2(2)*escalondt(0,0,10, 1/32).*t1.*exp(p2(2)*t1);

subplot(2,1,1);
plot(t1,h1, "linewidth", 2,t1,h2,'r', "linewidth", 2);
xlim([0,10]);
ylim([-10,20]);
grid();
title('Respuesta al impulso h(t) con \zeta=0.05 y \zeta = 1.0');
xlabel('tiempo(s)');
legend('\zeta=0.05','\zeta=1.0')

# =====================================================================
# =====================================================================
# Boxcar

t2 = [0:1/32:20];
boxcar = escalondt(0,0,20,1/32) - escalondt(10,0,20,1/32);

# =====================================================================
# Convolutions

[s1,ts1] = convdt(boxcar, t2, h1, t1, 1/32);
[s2,ts2] = convdt(boxcar, t2, h2, t1, 1/32);

subplot(2,1,2);
plot(ts1, s1, "linewidth", 2, ts2, s2, 'r', "linewidth", 2);
xlim([0,20]);
# ylim([-1,2]);
grid();
title('Respuesta al escalon s(t) con \zeta=0.05 y \zeta = 1.0');
xlabel('tiempo(s)');
legend('\zeta=0.05','\zeta=1.0')

# =====================================================================
# Comments

# For some reason, the way I worked out the impulse response with zeta = 1
# by using complex coefficients given by the residue command results in a
# different graph from the one showed in Figure 4, and it seems to fit better
# on the left half of the graph, I would elaborate on real coefficients but
# I believe the procedure is equivalently correct, in case there is a problem
# with it, please let me know.

# =====================================================================



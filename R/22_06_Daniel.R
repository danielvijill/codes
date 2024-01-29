# Trabajando con un modelo y = A + Bx ponderado
f <- seq(10, 110, 10)
V <- c(16, 45, 64, 70, 75, 115, 142, 167, 183, 190, 221)
dV <- c(5, 5, 5, 5, 30, 5, 5, 5, 5, 30, 5)

# Creando elementos de la matriz alpha

a11 <- sum(1/dV^2)
a12 <- sum(1/dV^2 *f)
a22 <- sum(1/dV^2 *f^2)

# Creando elementos de beta

b1 <- sum(1/dV^2 *V)
b2 <- sum(1/dV^2 *f*V)

# Definiendo las matrices alpha y beta

alpha <- matrix(c(a11, a12, a12, a22), ncol = 2, byrow = TRUE)
beta <- c(b1, b2)

# Resolviendo sistema para parámetros de ajuste

coeficientes <- solve(alpha, beta)
coeficientes

# Encontrando incertidumbres

invalpha <- solve(alpha)
invalpha
incertidumbres <- sqrt((diag(invalpha)))
incertidumbres

# Utilizando lm

ajusteponderado <- lm(V~f, weights = 1/dV^2)
resumen <- summary(ajusteponderado)

# Comparando métodos
coeficientes
coef(ajusteponderado)

invalpha
resumen$cov.unscaled

lmincertidumbres <- sqrt(diag(resumen$cov.unscaled))

incertidumbres
lmincertidumbres

plot(f, resumen$residuals)

resumen$coefficients
# Trabajando con un modelo y = A + Bx ordinario
f <- seq(10, 110, 10)
V <- c(16, 45, 64, 70, 75, 115, 142, 167, 183, 190, 221)

# Creando elementos de la matriz alpha prima
a11 <- length(f)
a12 <- sum(f)
a22 <- sum(f^2)

# Creando betas
b1 <- sum(V)
b2 <- sum(V*f)

# Creando matriz alpha y vector beta
alphap <- matrix(c(a11, a12, a12, a22), ncol=2, byrow=TRUE)
beta <- c(b1,b2)
parametros <- solve(alphap, beta)
parametros

sigmay <- sqrt((1/(length(f)-2))*sum((V-parametros[1]-parametros[2]*f)^2))
sigmay

invp <- solve(alphap)
incertidumbreso <- sigmay*sqrt(diag(invp))
incertidumbreso

#por medio elementos
ajuste_ordinario <- lm(V~f)
resumeno <- summary(ajuste_ordinario)
resumeno

# Comparando métodos
coef(ajuste_ordinario)
parametros

sigmay
resumeno$sigma

incertidumbreso #matricial
resumeno$coefficients[,2] #lm

# Analizando matriz alpha prima
invp #matricial
resumeno$cov.unscaled

# Encontrar el error total del ajuste
errores <- sigmay^2*invp
errores

# f <- 220 # Para un solo valor de frecuencia
f <- seq(220, 400, 20)
V <- -0.07 + 1.9*f #recta improvisada
V

deltaV <- sqrt(errores[1,1]+f^2*errores[2,2]+2*f*errores[1,2])
deltaV



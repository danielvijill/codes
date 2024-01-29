#Y=A+BX
m <- c(2, 4, 6, 8, 10)
m1 = seq(2, 10, 2)
m; m1
l <- c(42, 48.4, 51.3, 56.3, 58.6)

# A pie
A <- (sum(m^2)*sum(l)-sum(m)*sum(l*m))/(length(m)*sum(m^2)-(sum(m))^2)
A

#por medio de lm
aju <- lm(l~m)
summary(aju)

t <- c(0, 1.977, 2.702, 3.273, 2.767, 4.208)
x <- c(0.179, 0.40, 0.60, 0.80, 1.0, 1.2)
cuadratico <- lm(x~I(t^2)+I(t))
cuadratico
cuadratico1 <- lm(x~t^2+t) #forma incorrecta
lineal1 <- lm(x~t)
cuadratico1; lineal1
cuadratico2 <- lm(x~I(t^2+t)) #forma incorrecta
cuadratico2
salida <- summary(cuadratico)
salida$sigma
salida$residuals
salida$coefficients
salida$coefficients[2]
salida$coefficients[,2]
salida$coefficients[2,2]
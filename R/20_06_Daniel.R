#Trabajando con matrices
#m1 <- matrix(seq(1:4), ncol = 2)
#m1
m1 <- matrix(seq(1:4), ncol = 2, byrow = TRUE)
m1
#m2 <- matrix(c(1, 3, 5, 6, 0, -1), nrow = 3, byrow = TRUE)
#m2
m2 <- matrix(c(1, 3, 5, 6, 0, -1), ncol = 3, byrow = TRUE)
m2
x <- c(-2, -1, 0, 1, 2)
y <- c(131, 113, 89, 51, 7)
matriz1 <- cbind(x,y)
matriz1
matriz2 <- rbind(x,y)
matriz2

#Tests con matrices

is.matrix(matriz1)
is.matrix(m1)
is.matrix(x)

length(matriz2)
dim(matriz2)
nrow(matriz2)
ncol(matriz2)
mode(matriz2)

#Renombrar filas y columnas

colnames(matriz2) <- c("uno","dos","tres","cuatro","cinco")
rownames(matriz2) <- c("var1","var2")
matriz2

#Determinante, diagonal, eigenvalues e inversa

# det(matriz2)
det(m1)
m1
diag(m1)
eigen(m1)
inv<-solve(m1)
inv

#Multiplicación de matrices

m1*inv #elemento por elemento
m1%*%inv #producto de matrices

# Obtención de coeficientes

alpha <- matrix(c(2400, 12000, 12000, 880000), ncol = 2, byrow = TRUE)
beta <- c(2801.6, 258472)
coeficientes <- solve(alpha, beta)
coeficientes
is.vector(coeficientes)





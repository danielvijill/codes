#read.csv("abc.csv")
#read.csv("abc.csv", colClasses = c(NA, "NULL", NA)) #colClasses removes columns
#read.csv("abc.csv", col.names = c("tiempo (s)", "Volt1(V)", "Volt2(V)", "X"), skip = 1) #ommit rows
data <- read.csv("abc.csv", col.names = c("tiempo (s)", "Volt1(V)", "Volt2(V)", "X"), skip = 1, colClasses = c(NA, NA, NA, "NULL"))
class(datos)
attach(datos)
subset(datos, (Volt1.V.>0 & Volt2.V.<2) & (tiempos.s.>3))
subset(datos, (Volt1.V.>2) & (tiempos.s. < 50))
datos2 <- subset(datos,(Volt1.v. > 0 & Volt1.v. < 2)&(Tiempo.s. < 50 ))
datos2
install.packages("dplyr")
library(dplyr)
distinct(datos2,Volt1.v.,keep_all=TRUE)

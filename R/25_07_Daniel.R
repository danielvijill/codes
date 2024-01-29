read.csv("abc.csv")
read.csv("abc.csv" , colClasses = c(NA , "NULL", NA, "NULL"))# El NULL quita columnas

read.csv("abc.csv" , col.names = c("tiempo", "Volt1", "Volt2", "X"))
read.csv("abc.csv" , col.names = c("tiempos(s)", "Volt1(V)", "Volt2(V)", "X") , skip = 1 , colClasses = c(NA, NA, NA ,"NULL"))


datos <-read.csv("abc.csv" , col.names = c("tiempos(s)", "Volt1(V)", "Volt2(V)", "X") , skip = 1 , colClasses = c(NA, NA, NA ,"NULL"))
datos
class(datos)

attach(datos)
subset(datos,(Volt1.V.>0 & Volt2.V.<2) & (tiempos.s.>3)) #condiciones
subset(datos,(Volt1.V.>0) & (tiempos.s.>3))
subset(datos,(Volt1.V.>2) & (tiempos.s.<50 ))

datos2 <- subset(datos, (Volt1.V.> 0 & Volt1.V. <2) & (tiempos.s. >3))
datos2

#Filtrar datos repetidos

install.packages("dplyr")
library(dplyr)

distinct(datos2, Volt1.V., .keep_all =T)
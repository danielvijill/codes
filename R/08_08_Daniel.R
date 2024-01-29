dpois(0,1.5)
dpois(1,1.5)
v <- c(0, 1, 2, 3)

dpois(v,1.5)

distPoisson <- function(x,y){
  dpois(x,y)
}

distPoisson(v,1.5)

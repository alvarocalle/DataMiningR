## *****************************************************************
## Modulo I: Ejercicio 19/Introduction to Data Mining, Tan
## Funciones para calcular coeficientes de similitud y distancias
## *****************************************************************

# Euclidean distance
Euclidean_d <- function(x, y) {
      sqrt( sum( (x - y)**2 ) )
}

# Jaccard similarity coefficient (only for binary vectors)
Jaccard_s <- function(x, y) {
            
      dimx <- length(x)
      dimy <- length(y)
      
      if(dimx != dimy) stop("Error: vectors with different dim")
      
      mxy <- matrix(c(x,y), nrow = 2, ncol = dimx)
      
      f00 <- 0.
      f11 <- 0.
      f10 <- 0.
      f01 <- 0.
      
      for(i in 1:dimx){
            if(mxy[1,i] == 0 & mxy[2,i] == 0){
                  f00 <- f00 + 1     
            }
            else if(mxy[1,i] == 1 & mxy[2,i] == 1){
                  f11 <- f11 + 1     
            }
            else if(mxy[1,i] == 1 & mxy[2,i] == 0){
                  f10 <- f10 + 1     
            }
            else if(mxy[1,i] == 0 & mxy[2,i] == 1){
                  f01 <- f01 + 1     
            }
      }
      
      f11/(f01+f10+f11)
}

# Cosine similarity
cosine_s <- function(x, y) {
      
      xnorm <- sqrt(sum(x**2))
      ynorm <- sqrt(sum(y**2))
      
      sum( x*y )/xnorm/ynorm
}
      
      
# Pearson's correlation coefficient:
corr_s <- function(x, y) {
      
      sx  <- sd(x)
      sy  <- sd(y)
      sxy <- cov(x,y)
      
      sxy/sx/sy
}


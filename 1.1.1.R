### R Code 1.1.1. Congruential generator
random <- function(seed,n,M,a,c)
{
rand <- rep(NA,n)
rand[1] <- seed
for(i in 2:n){
rand[i] <- (a*rand[i-1]+c)%%M
}
return(rand/M)
}

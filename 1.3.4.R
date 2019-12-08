### Generation from Beta(a,b)
Nsim <- 1000
a <- 2.7
b <- 6.3
M <- 2.67
u <- runif(Nsim,max=M)### uniformly distributed over (0,M)
y <- runif(Nsim) ### instrumental sample
x <- y[u<dbeta(y,a,b)] ### accepted subsample
length(x) ### random (!) sample size of the generated sample

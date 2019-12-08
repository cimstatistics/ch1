### Normal generation from a Cauchy
rand.reject <- function(N,M)
{
rand <- rep(NA,N)
for(i in 1:N){
L<-TRUE
while(L){
rand[i] <- rcauchy(1)
r <- dnorm(rand[i])/(M*dcauchy(rand[i]))
if(runif(1)<r){
L <- FALSE}
}
}
return(rand)
}R
<- rand.reject(100,1.7) ### Here, the sample size is 100.
shapiro.test(R) ### Test for normal distribution

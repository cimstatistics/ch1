### Generate from a mixture distribution
x1 <- rnorm(200,-1,0.5) ### 200 random numbers from N(-1,0.25)
x2 <- rnorm(200,1,0.3) ### 200 random numbers from N(1,0.09)
bin <- rbinom(200,1,0.7) ### 200 random numbers from Ber(0.7)
z <- bin*x1+(1-bin)*x2 ### mixture

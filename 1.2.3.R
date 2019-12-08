### Box-Muller algorithm
picture <- function(seed1,seed2,n,N,M,a,b)
{
u1 <- random(seed1,N,M,a,b)
u2 <- random(seed2,N,M,a,b)
x1 <- sqrt(-2*log(u1))*cos(2*pi*u2)
x2 <- sqrt(-2*log(u1))*sin(2*pi*u2)
plot(x1[n:N],x2[n:N],"p",pch=21,asp=1,col=1,
axes=F,ylab="",xlab="", ylim=c(-3,3),xlim=c(-3,3))
}
### asp=1 is important for a symmetric picture!
picture(2,4,10,500,2048,65,1)### rosette
picture(0,2,100,500,2048,129,1)### spiral

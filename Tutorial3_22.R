#rnorm, c, seq, rep, rm, print, is.Numerical, is.integer, is.double,
#is.character, typeof, sqrt, paste...

#?

?rnorm()

rnorm(5)
rnorm(5, 10, 8)
rnorm(n=5,mean=10,sd=8)
rnorm(n=5,sd=8,mean=10)

x<- c("a","b","c")

?seq()
seq(from=10, to=20, along.with=x)

?rep()
rep(5:6, times=10)
rep(x, times=5)

?sqrt()
A <- seq(from=10, to=20, along.with=x)
A
B <- sqrt(A)
B

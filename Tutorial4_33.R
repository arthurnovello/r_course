x <- c("a", "b", "c", "d", "e")
x
x[c(1,5)]
x[1]

Games
Games[1:3,5:10]
Games[-2:-9,]
Games[c(1,10),]
Games[,c("2008","2009")]
Games[1,]

is.matrix(Games[1,])
is.vector(Games[1,])

Games[1,"2009"]
Games[1,1:10]
is.matrix(Games[1,1:10])

Games[1,,drop=F]
is.matrix(Games[1,,drop=F])
Games[1,"2009", drop=F]

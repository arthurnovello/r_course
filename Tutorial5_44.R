# ------------  Basic operations with a DF ------------

stats[1:10,] #subsetting
stats[3:9,]
stats[c(4,100),]


stats[1,]
is.data.frame(stats[1,])
#Matrix --> mat[1,] becomes a vector
#DF --> df[1,] continues as a dataframe, no need for drop = F
stats[,1]
is.data.frame(stats[,1])
is.data.frame(stats[,1,drop = F])
stats[,1,drop = F]

#multiply columns
head(stats)
stats$Birth.rate * stats$Internet.users
stats$Birth.rate + stats$Internet.users

#add column
head(stats)
stats$MyCalc <- stats$Birth.rate * stats$Internet.users
head(stats)

stats$xyz <- 1:5
head(stats)

#remove a column
stats$MyCalc <- NULL
stats$xyz <- NULL
head(stats)

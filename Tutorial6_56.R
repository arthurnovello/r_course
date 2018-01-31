
movies <- read.csv(file.choose())

head(movies)
colnames(movies) <- c("Film", "Genre", "CriticalRating", "AudienceRating", "BudgetMillions", "Year")
head(movies)
tail(movies)
str(movies)
summary(movies)
#Year needs become a Factor, like Film and Genre, because we won't use it for arithimetics

factor(movies$Year)
movies$Year <- factor(movies$Year)
summary(movies)

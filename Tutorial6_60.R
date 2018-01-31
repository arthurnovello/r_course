# ------------ Setting VS Mappign ------------

r <- ggplot(data=movies, aes(x=CriticalRating, y=AudienceRating))
r + geom_point()

#Add colour
#1. Mapping (what we've done so far)
r + geom_point(aes(colour=Genre))
#2. Setting
r + geom_point(colour="DarkGreen")
#ERROR:
#r + geom_point(colour="DarkGreen")

#1. Mapping
r + geom_point(aes(size=BudgetMillions))
#2. Setting
r + geom_point(size=10)
#ERROR:
#r + geom_point(colour="DarkGreen")
#r + geom_point(aes(size=10))
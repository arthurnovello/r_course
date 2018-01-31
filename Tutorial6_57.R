# ------------ Aesthetics ------------

library(ggplot2)

ggplot(data=movies, aes(x=CriticalRating, y=AudienceRating))

#Geometry
ggplot(data=movies, aes(x=CriticalRating, y=AudienceRating)) + 
  geom_point()

#Colour
ggplot(data=movies, aes(x=CriticalRating, y=AudienceRating, colour=Genre)) + 
  geom_point()

#Size
ggplot(data=movies, aes(x=CriticalRating, y=AudienceRating, colour=Genre, size=Genre)) + 
  geom_point()

ggplot(data=movies, aes(x=CriticalRating, y=AudienceRating, colour=Genre, size=BudgetMillions)) + 
  geom_point()


#ggplot(data=movies, aes(x=CriticalRating, y=AudienceRating, colour=Genre, size=BudgetMillions)) + 
#  geom_line()

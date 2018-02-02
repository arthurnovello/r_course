# ------------ Statistical Transformations ------------

?geom_smooth

u <- ggplot(data = movies, aes(x = CriticRating, y= AudienceRating,
                               colour = Genre))

u + geom_point() + geom_smooth(fill=NA)


# boxplots
u <- ggplot(data = movies, aes(x = Genre, y = AudienceRating,
                               colour = Genre))
u + geom_boxplot()
u + geom_boxplot(size = 1.2)
u + geom_boxplot(size = 1.2) + geom_point()
# tip/hack
u + geom_boxplot(size = 1.2) + geom_jitter()
# another way
u + geom_jitter() + geom_boxplot(size = 1.2, alpha = 0.5)
# >>>> 6

u2 <- ggplot(data = movies, aes(x = Genre, y = CriticRating,
                               colour = Genre))
u2 + geom_jitter() + geom_boxplot(size = 1.2, alpha = 0.5)
# @ the critical rating the rates become more spread than the
# audience rating, but the best scenario continues being the 
# Thriller movies and the worst the Horror movies
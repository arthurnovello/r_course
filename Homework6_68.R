# ------------ Importing Data ------------

movies <- read.csv(file.choose())
head(movies)
summary(movies)
str(movies)

# ------------ FilterData ------------
levels(movies$Studio)
studios <- (movies$Studio == "Buena Vista Studios") | (movies$Studio == "Fox") | (movies$Studio == "Paramount Pictures") | (movies$Studio == "Sony") | (movies$Studio == "Universal") | (movies$Studio == "WB")
movies[studios,]
moviesfilter <- movies[studios,]
moviesfilter
# ------------ Aesthetics ------------

colnames(moviesfilter) <- c("Day", "Director", "Genre", "Movie", "Release", "Studio", "AdjGross", "BudgetMillions", "GrossMillions", "IMDB", "MovieLens",
              "OverseasMillions", "OverseasPercentage", "ProfitMillions", "ProfitPercentage", "RuntimeMinutes", "USMillions", "USPercentage")
plot <- ggplot(data = moviesfilter, aes(x = Genre, y = USPercentage, size = BudgetMillions))

plot + geom_boxplot() + geom_jitter(aes(colour = Studio))

# ------------ Zoom & Limits ------------

plot + geom_boxplot() + geom_jitter(aes(colour = Studio)) + ylim(0, 80) + coord_cartesian(xlim = c(1, 2, 3, 5, 8))
levels(movies$Genre)
plot + geom_jitter(aes(colour = Studio)) + 
  geom_boxplot(alpha = 0.6) + 
  coord_cartesian(ylim = c(0, 80)) + 
  xlim("action", "adventure", "animation", "comedy", "drama")

# ------------ Themes ------------

plot + geom_boxplot() + geom_jitter(aes(colour = Studio)) + ylim(0, 80) + coord_cartesian(xlim = c(1, 2, 3, 5, 8))
levels(movies$Genre)
plot + geom_jitter(aes(colour = Studio)) + 
  geom_boxplot(alpha = 0.6) + 
  ylim(0, 80) + 
  xlim("action", "adventure", "animation", "comedy", "drama") +
  xlab("Genre") +
  ylab("Gross % US") +
  ggtitle("Domestic Gross % by Genre") +
  theme(axis.title.x = element_text(colour = "Blue",
                                    size = 30),
        axis.title.y = element_text(colour = "Blue",
                                    size = 30),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size = 20),
        legend.title = element_text(size = 30),
        legend.text = element_text(size = 20),
        plot.title = element_text(colour = "Black",
                                  size = 40,
                                  family = "Helvetica"))

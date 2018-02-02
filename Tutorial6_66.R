# ------------ Themes ------------

o <- ggplot(data = movies, aes(x = BudgetMillions))

h <- o + geom_histogram(binwidth = 10, aes(fill=Genre),
                   colour = "Black")
h

# axes labels
h + xlab("Money Axis") + ylab("Number of Movies")

# label formatting
h + xlab("Money Axis") + ylab("Number of Movies") +
  theme(axis.title.x = element_text(colour = "DarkGreen",
                                    size = 30),
        axis.title.y = element_text(colour = "Red",
                                   size = 30),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size = 20))

# legend formatting
h + xlab("Money Axis") + ylab("Number of Movies") +
  theme(axis.title.x = element_text(colour = "DarkGreen",
                                    size = 30),
        axis.title.y = element_text(colour = "Red",
                                    size = 30),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size = 20),
        legend.title = element_text(size = 30),
        legend.text = element_text(size = 20),
        legend.position = c(1,1),
        legend.justification = c(1,1))

# title
h + xlab("Money Axis") + ylab("Number of Movies") +
  ggtitle("Movie Budget Distribution") +
  theme(axis.title.x = element_text(colour = "DarkGreen",
                                    size = 30),
        axis.title.y = element_text(colour = "Red",
                                    size = 30),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size = 20),
        legend.title = element_text(size = 30),
        legend.text = element_text(size = 20),
        legend.position = c(1,1),
        legend.justification = c(1,1),
        plot.title = element_text(colour = "DarkBlue",
                                  size = 40,
                                  family = "Helvetica"))

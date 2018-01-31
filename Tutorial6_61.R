# ------------ Histograms and Density Charts ------------

s <- ggplot(data = movies, aes(x = BudgetMillions))
s + geom_histogram(binwidth = 9.99)

#add colour and border
s + geom_histogram(binwidth = 10, aes(fill=Genre), colour = "black")
#>>>3

#sometimes you may need a density charts:
s + geom_density(aes(fill=Genre), position = "stack")

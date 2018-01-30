# ------------  Introduction to qplot() ------------

?qplot
qplot(data = stats, x = Internet.users)
qplot(data = stats, x = Income.Group, y = Birth.rate)
qplot(data = stats, x = Income.Group, y = Birth.rate, size = I(3),
      colour = I("blue"))
qplot(data = stats, x = Income.Group, y = Birth.rate, geom="boxplot")

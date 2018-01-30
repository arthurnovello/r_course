# ------------ Visualizing what we need ------------

qplot(data = stats, x = Internet.users, y = Birth.rate)
qplot(data = stats, x = Internet.users, y = Birth.rate, size= I(4))
qplot(data = stats, x = Internet.users, y = Birth.rate, colour = Income.Group,
      size= I(4))
stats$Country.Regions <- Regions_2012_Dataset
head(stats)
qplot(data = stats, x = Internet.users, y = Birth.rate, colour = Country.Regions,
      size= I(4))

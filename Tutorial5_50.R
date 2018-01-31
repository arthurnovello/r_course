# ------------ Visualizing With new Split ------------

qplot(data = merged, x = Internet.users, y = Birth.rate, colour = Region,
      size= I(4))
#Shapes
qplot(data = merged, x = Internet.users, y = Birth.rate, colour = Region,
      size= I(4), shape = I(23))
#Transparency
qplot(data = merged, x = Internet.users, y = Birth.rate, colour = Region,
      size= I(4), shape = I(19), alpha = I(0.55))
#Title
qplot(data = merged, x = Internet.users, y = Birth.rate, colour = Region,
      size= I(4), shape = I(19), alpha = I(0.6),
      main = "Birth Rate vs Internet Users")

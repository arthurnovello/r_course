#Free Throw Attempts per Game

myPlot(freeThrowsAtt/Games)

#Accuracy of Free Throws

myPlot(freeThrows/freeThrowsAtt)

#Playing Style excluding Free Throws

pStyle <- Points - freeThrows

myPlot(pStyle/FieldGoals)

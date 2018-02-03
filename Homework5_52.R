# ------------ Homework ------------

#Importing Data
hwStats <- read.csv(file.choose())
hwStats

#Testing filtering
hwStats[hwStats$Year == 1960,]
hwStats[hwStats$Year == 2013,]

#Creating a Data frame for Life Expectancy at both years
lifeExpcDf1960 <- data.frame(Country.Code = Country_Code, Life.Expectancy = Life_Expectancy_At_Birth_1960)
lifeExpcDf1960

lifeExpcDf2013 <- data.frame(Country.Code = Country_Code, Life.Expectancy = Life_Expectancy_At_Birth_2013)
lifeExpcDf2013

#Filtering previous data frame
stats1960 <- hwStats[hwStats$Year == 1960,]
stats1960

stats2013 <- hwStats[hwStats$Year == 2013,]
stats2013

#Merging both data sets
merged1960 <- merge(stats1960, lifeExpcDf1960, by.x = "Country.Code", by.y = "Country.Code")
merged1960

merged2013 <- merge(stats2013, lifeExpcDf2013, by.x = "Country.Code", by.y = "Country.Code")
merged2013

#Ploting the Graphs
library(ggplot2)

qplot(data = merged1960, x = Fertility.Rate, y = Life.Expectancy, colour = Region,
      size= I(4), shape = I(19), alpha = I(0.6))
qplot(data = merged2013, x = Fertility.Rate, y = Life.Expectancy, colour = Region,
      size= I(4), shape = I(19), alpha = I(0.6))

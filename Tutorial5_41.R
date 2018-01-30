?read.csv

#Method 1: Select the file manualy
stats <- read.csv(file.choose())
stats

#Method 2: Set WD and Read Data
getwd()
#Mac:
setwd("/Users/*USER_NAME*/Development/RCourse")
rm(stats)
stats <- read.csv("/Datasets/DemographicData.csv")

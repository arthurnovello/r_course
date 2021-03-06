#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

#profit for each month

monthProf <- revenue - expenses

#profit after tax

profAfterTax <- round(monthProf * 0.7, 2)

#profit margin

profMargin <- profAfterTax / revenue

#profit mean and month vector

mean <- round(mean(profAfterTax), 2)

#good months

goodMonths <- profAfterTax > mean

#bad month

badMonths <- profAfterTax < mean

#best month

bestMonth <- profAfterTax == max(profAfterTax)

#worst month

worstMonth <- profAfterTax == min(profAfterTax)

#presentation

round(monthProf/1000)
round(profAfterTax/1000)
round(profMargin*100)
goodMonths
badMonths
bestMonth
worstMonth


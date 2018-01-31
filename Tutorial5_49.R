# ------------ Merging Data frames ------------

head(stats)
head(mydf)

merged <- merge(stats, mydf, by.x = "Country.Code", by.y = "Code")
head(merged)

merged$Country <- NULL
head(merged)
tail(merged)

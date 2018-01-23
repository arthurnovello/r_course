counter <- 0

for (i in rnorm(10)) {
  if ( i >= -1 & i <= 1) {
    counter <- counter + 1
  }
}
mean10 <- counter/10

counter <- 0

for (i in rnorm(100)) {
  if ( i >= -1 & i <= 1) {
    counter <- counter + 1
  }
}
mean100 <- counter/100

counter <- 0

for (i in rnorm(1000)) {
  if ( i >= -1 & i <= 1) {
    counter <- counter + 1
  }
}
mean1000 <- counter/1000

counter <- 0

for (i in rnorm(1000000)) {
  if ( i >= -1 & i <= 1) {
    counter <- counter + 1
  }
}
mean1000000 <- counter/1000000
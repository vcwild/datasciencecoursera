add2 <- function(x, y) {
  x + y
}

aboveTen <- function(x) {
  use <- x > 10
  x[use]
}

above <- function(param, above=10) {
  n <- param > above
  param[n]
}

columnMean <- function(y, removeNA = TRUE) {
  nc <- ncol(y)
  means <- numeric(nc)
  for (i in 1:nc) {
    means[i] <- mean(y[, i], na.rm = removeNA)
  }
  means
}

readData <- function(param) {
  read.csv(character(param))
}

readData("copyOfhw1_data.csv")

args(read.csv)
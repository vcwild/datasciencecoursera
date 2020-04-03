pollutantmean <- function (directory=".", pollutant="none", id=1:332) {
  data <- numeric()
  for (i in id) {
    file <- read.csv(paste("./", directory, "/", formatC(i, width = 3, flag="0"), ".csv", sep = ""))
    data = c(data, file[[pollutant]])
  }
  return (mean(data, na.rm=TRUE))
}

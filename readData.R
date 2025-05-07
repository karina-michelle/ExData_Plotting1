library(dplyr)
## Valid date range -- per assignment instructions
dateRange <- c(as.Date("2007-02-01", format="%Y-%m-%d"),
               as.Date("2007-02-02", format="%Y-%m-%d"))
readData <- function(filePath) {
        ## Read data
        data <- read.table(filePath, header=TRUE, sep=";", na.strings=c("?"))
        data <- mutate(data, DateTime=as.POSIXlt(paste(Date, Time), format="%d/%m/%Y %H:%M:%S"))
        data[as.Date(data$DateTime) %in% dateRange,]
}
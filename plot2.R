household <- read.table("Data/subHouseHold.txt", sep=";", header=TRUE, 
                        colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", "character"))
household$DateTime <- strptime(household$DateTime, "%Y-%m-%d %H:%M:%S")


png("figure/plot2.png", width=480, height=480)
plot(household$DateTime, household$Global_active_power, type="n", xlab="", ylab="Global Active Power (kilowatts)") 
lines(household$DateTime, household$Global_active_power, type="l")
dev.off()

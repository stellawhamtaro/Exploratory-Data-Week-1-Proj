#reading the data and creating a subset
powerdata <- household_power_consumption
powernames <- colnames(powerdata)
subpower <- subset(powerdata,powerdata$V1=="1/2/2007" | powerdata$V1 =="2/2/2007")

subpower$V1 <- as.Date(subpower$V1, format ="%d/%m/%y")
subpower$V2 <- strptime(subpower$V2, format = "%H:%M:%S")

plot(subpower$V2,as.numeric(as.character(subpower$V3)),type="l",xlab="",ylab="Global Active Power (kilowatts)")

title(main="Global Active Power Vs Time")

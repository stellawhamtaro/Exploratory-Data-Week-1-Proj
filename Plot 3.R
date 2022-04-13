powerdata <- household_power_consumption
powernames <- colnames(powerdata)
subpower <- subset(powerdata,powerdata$V1=="1/2/2007" | powerdata$V1 =="2/2/2007")

subpower$V1 <- as.Date(subpower$V1, format ="%d/%m/%y")
subpower$V2 <- strptime(subpower$V2, format = "%H:%M:%S")
subpower[1:1440,"V2"] <- format(subpower[1:1440,"V2"],"2007-02-01 %H:%M:%S")
subpower[1441:2880,"V2"] <- format(subpower[1441:2880,"V2"],"2007-02-02 %H:%M:%S")

plot(subpower$V2, subpower$V7,type = "l", xlab="", ylab = "Energy Sub Metering" )
with(subpower,lines(V2,as.numeric(as.character(V7))))
with(subpower,lines(V2,as.numeric(as.character(V8)),col="red"))
with(subpower,lines(V2,as.numeric(as.character(V9)),col="blue"))
legend("topright", lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

title(main="Energy sub-metering")
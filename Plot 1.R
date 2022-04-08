  powerdata <- household_power_consumption
  powernames <- colnames(powerdata)
  subpower <- subset(powerdata,powerdata$V1=="1/2/2007" | powerdata$V1 =="2/2/2007")
  
  #calling the basic plot function
  hist(as.numeric(as.character(subpower$V3)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
  
  # annotating graph
  title(main="Global Active Power")

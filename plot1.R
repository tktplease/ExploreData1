subset_power <- house_power[house_power$Pdate == as.Date("2007-02-01") | house_power$Pdate ==  as.Date("2007-02-02"),]

hist(subset_power$Global_active_power,col="Orange",xlab="Global Active Power (kilowatts)",main = "Global Active Power")

dev.copy(png,"plot1.png")

dev.off()
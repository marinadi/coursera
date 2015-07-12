library(data.table)
DTALL<-fread("household_power_consumption.txt", sep="auto",header=TRUE)
DT1=DTALL[DTALL$Date=="1/2/2007"] 
DT2=DTALL[DTALL$Date=="2/2/2007"]
l=list(DT1,DT2)
DT3=rbindlist(l)
DT3[,w:=as.numeric(as.character(Global_active_power))]
x<-DT3$w
hist(x,col="red",xlab="Global Active Power (kilowatts)",ylab="Frequency",main="Global Active Power")
dev.copy(png,file="plot1.png")
dev.off()
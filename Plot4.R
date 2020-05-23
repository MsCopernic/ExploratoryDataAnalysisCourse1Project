Plot4 <- function() {
   
   # Please read DataTool.R , I use only one process to convert 
   # data types, filter and prepare a dataset to be used in all the ploting
   # generation in Plot1 to Plot4 R Programs
   
   ## read data
   Source <- read_csv("./data/project.csv")   

   ## Plot as required
   png("plot4.png", width=480, height=480)
   
   par( mfrow = c(2,2))
   
   with(Source, plot(DateTime, Global_active_power, type="l", xlab="", 
                     ylab="Global Active Power"))
   
   with(Source, plot( DateTime, Voltage, type = "l", xlab="datetime", ylab="Voltage"))
   with(Source, plot( DateTime, Sub_metering_1, type="l", xlab="", 
                      ylab="Energy sub metering"))
   
   lines( Source$DateTime, Source$Sub_metering_2,type = "l", col = "red")
   lines( Source$DateTime, Source$Sub_metering_3,type = "l", col = "blue")
   
   legend(c("topright"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
          lty= 1, lwd=2, col = c("black", "red", "blue"))
   
   with(Source, plot(DateTime, Global_reactive_power, type="l", xlab="datetime", 
                     ylab="Global_reactive_power"))
   
   dev.off()
   
}
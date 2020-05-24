Plot1 <- function(){
   
   # Please read DataTool.R , I use only one process to convert 
   # data types, filter and prepare a dataset to be used in all the ploting
   # generation in Plot1 to Plot4 R Programs
   
   # Create plot histogram for Global_active_power
   
   png( "plot1.png", width=480, height=480)
   
   hist( SubSource$Global_active_power, col="red", border="black", 
        main = "Global Active Power", xlab ="Global Active Power (kilowatts)", 
        ylab="Frequency")
   
   dev.off()
   
}
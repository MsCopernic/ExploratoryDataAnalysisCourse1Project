Plot2 <- function(){
   
   # Please read DataTool.R , I use only one process to convert 
   # data types, filter and prepare a dataset to be used in all the ploting
   # generation in Plot1 to Plot4 R Programs

   ## read data
   Source <- read_csv("./data/project.csv")
   
   ## plot Global_active_power vs date&time
   png( "plot2.png", width=480, height=480)
   with(Source, plot(DateTime, Global_active_power, type="l", xlab="Day", 
                         ylab="Global Active Power (kilowatts)"))
   dev.off()
   
}
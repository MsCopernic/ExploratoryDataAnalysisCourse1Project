MakeData <- function(){

   library(dplyr)
   
   # Read data & filter NAs
   Source <- tibble(read.table("./data/household_power_consumption.txt", 
                        stringsAsFactors = FALSE, header = TRUE, sep =";" ))

   Source <- filter(Source, !is.na(Sub_metering_3))

   ## Assign the correct class to all columns   
   Source <- Source %>%
      mutate( Date = as.Date(Date, format="%d/%m/%Y")) %>%
      mutate( Time = format(Time, format="%H:%M:%S")) %>%
      mutate( Global_active_power = as.numeric(Global_active_power)) %>%
      mutate( Global_reactive_power = as.numeric(Global_reactive_power)) %>%
      mutate( Voltage = as.numeric(Voltage)) %>%
      mutate( Global_intensity = as.numeric(Global_intensity)) %>%
      mutate( Sub_metering_1 = as.numeric(Sub_metering_1)) %>%
      mutate( Sub_metering_2 = as.numeric(Sub_metering_2)) %>%
      mutate( Sub_metering_3 = as.numeric(Sub_metering_3))

   ## subset data from 2007-02-01 and 2007-02-02
   Source <- filter(Source, Date == "2007-02-01" | Date =="2007-02-02")
   
   ## Add column to Source with Date & Time merged
   DateTime<- as.POSIXlt(paste(Source$Date, Source$Time), format="%Y-%m-%d %H:%M:%S")
   Source <- cbind(Source, DateTime)   
   
   ## Save subset prepared for the Plot1 -> Plot 4 R programs
   write_csv(Source, "./data/project.csv")
}
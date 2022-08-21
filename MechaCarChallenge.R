#load package
library(dplyr)

#import and read in csv as a dataframe
Mecha_Car <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(Mecha_Car)

#create linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=Mecha_Car)


#determine p-value and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=Mecha_Car))

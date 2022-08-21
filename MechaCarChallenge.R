#Deliverable 1

#load package
library(dplyr)

#import and read in csv as a dataframe
Mecha_Car <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(Mecha_Car)

#create linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=Mecha_Car)


#determine p-value and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=Mecha_Car))

#Deliverable 2

#read in csv file as table
Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#create a dataframe using summarize() function 
total_summary <- Suspension_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

#create a dataframe using group_by and summarize functions
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

#Deliverable 3

#perform t-test across all manufacturing lots
t.test(Suspension_Coil$PSI, mu=mean(Suspension_Coil$PSI))

#perform t-test for each individual lot
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot =="Lot1"), mu=mean(Suspension_Coil$PSI))
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot =="Lot2"), mu=mean(Suspension_Coil$PSI))
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot =="Lot3"), mu=mean(Suspension_Coil$PSI))

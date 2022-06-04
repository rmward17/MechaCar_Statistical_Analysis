#Deliverable 1

library(dplyr) # load the dplyr package
MechaCar <- read.csv("MechaCar_mpg.csv") #read in mpg data
lm(mpg ~ vehicle_length+ vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar) #linear regression
summary(lm(mpg ~ vehicle_length+ vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)) #get p-value and r-sqd for linear regression model

# Deliverable 2

coil <- read.csv("Suspension_Coil.csv") #read in coil data
total_summary <- coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=sd(PSI)^2, SD=sd(PSI)) #summary table
lot_summary <- coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=sd(PSI)^2, SD=sd(PSI)) #lot summary table


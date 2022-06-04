#Deliverable 1

library(dplyr) # load the dplyr package
MechaCar <- read.csv("MechaCar_mpg.csv") #read in mpg data
lm(mpg ~ vehicle_length+ vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar) #linear regression
summary(lm(mpg ~ vehicle_length+ vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)) #get p-value and r-sqd for linear regression model

# Deliverable 2

coil <- read.csv("Suspension_Coil.csv") #read in coil data
total_summary <- coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=sd(PSI)^2, SD=sd(PSI)) #summary table
lot_summary <- coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=sd(PSI)^2, SD=sd(PSI)) #lot summary table

# Deliverable 3

#t-test for true populaton mean
t.test(coil$PSI,mu=1500)

#Lot 1 t-test
Lot1 = subset(coil, Manufacturing_Lot == "Lot1")
t.test(Lot1$PSI,mu=1500)

#Lot 2 t-test
Lot2 = subset(coil, Manufacturing_Lot == "Lot2")
t.test(Lot2$PSI,mu=1500)

#Lot 3 t-test
Lot3 = subset(coil, Manufacturing_Lot == "Lot3")
t.test(Lot3$PSI,mu=1500)

library(dplyr) # load the dplyr package
MechaCar <- read.csv("MechaCar_mpg.csv") #read in mpg datafile
lm(mpg ~ vehicle_length+ vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar) #linear regression
summary(lm(mpg ~ vehicle_length+ vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)) #get p-value and r-sqd for linear regression model

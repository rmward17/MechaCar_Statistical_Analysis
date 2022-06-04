# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG
Using R, the linear regression model to predict MPG based on the data provided is:
    MPG = 6.267(Vehicle Length) + 0.001245(Vehicle Weight) + 0.06877(Spoiler Angle) + 3.546(Ground Clearnace) -3.411(AWD) -0.0104
    
Here is the R Output:

![R Output](https://github.com/rmward17/MechaCar_Statistical_Analysis/blob/main/mpg_linear_regression_output.png)

This output provides a lot of information about the linear regression model. The last line provides the p-value for the entire model, 5.35e-11. This is essentially a -value of 0 which means our model is statsitically significant. It also provides the adj. R-squared value for the model, 0.6825. This is a very good r-squared value and tells us that the model effectively predicts MPG ~70% of the time which is very good.

In the Coefficients table, the Pr(>|t|) column tells us the p-value of every coefficient. Using that, we can see which paramters are significant in predicting MPG. Based on the p-values, at a 95% confidence level, we can determine that vehicle length and ground clearance are significant in predicting MPG. THis alos means that the slope of our model is not ) as we have 2 signifiacnt paramters and the intercept.

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. To check this, below are summary statistics in total and by lot.

![Total Summary](https://github.com/rmward17/MechaCar_Statistical_Analysis/blob/main/Summary_Table.png)

![Lot Summary](https://github.com/rmward17/MechaCar_Statistical_Analysis/blob/main/Lot_Summary.png)

The current manufacturing data meets this design specification for all manufacturing lots in total but not each lot individually. We can see that lots 1 and 2 have a variance that meets that standard but lot 3's variance is not. We should take a look at lot 3 to see what we can do to decrease that variance.

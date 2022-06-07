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

## T-Tests on Suspension Coils
To determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per sq. inch, I performed a t-test.

![Overall T-Test](https://github.com/rmward17/MechaCar_Statistical_Analysis/blob/main/Lot_Summary.png)

The p-value is 0.06028. This means that the overall mean of 14987.8 is not different at a 95% confidence. 

I also performed a t-test on each lot to compare each manufacturing lot mean aganst the population mean.

![Lot 1 T-Test](https://github.com/rmward17/MechaCar_Statistical_Analysis/blob/main/Lot1_test.png)
|:--:|
| <b>Lot 1 T-Test</b>|

For lot 1, we can see that the p-value is 1 which means that the mean of Lot 1 is equal to the population mean at a 95% confidence level.

![Lot 2 T-Test](https://github.com/rmward17/MechaCar_Statistical_Analysis/blob/main/Lot2_test.png)
|:--:|
| <b>Lot 2 T-Test</b>|

Lot 2 has a p-value of 0.607. That is another very high p-value and we can that the Lot 2 mean is equal to the population mean at a 95% confidence level.

![Lot 3 T-Test](https://github.com/rmward17/MechaCar_Statistical_Analysis/blob/main/Lot3_test.png)
|:--:|
| <b>Lot 3 T-Test</b>|

Lot 3 has a p-value of 0.04168. It is lower than 0.05 which means it is not equal to the population mean at a 95% confidence level.

## Study Design: MechaCar vs Competition
A good way to gain insight on how MechaCar performs against comptitors is to run a statistical study. A metric I would consider measuring is fuel efficiency. A high fuel efficiency means that consumers would be spending less on gas and having less anxiety about runing out of gas while driving. 

To do this study, we would need a null hypothesis and an alternative hypothesis. One option is below:
Null: Drivers fill up their tanks at the same rate regardless of car over 30 days
Alternative: Drivers will fill their tanks up at a rate 10% lower than those of their competitors over 30 days

Using these methods, we could use a t-test on the average number of fill ups for each group of car. We would need data on the number of fill ups that drivers make for each car company to compare.

That is just one way to test how well MechaCar fairs against competition, there are many other routes a statistician can take!

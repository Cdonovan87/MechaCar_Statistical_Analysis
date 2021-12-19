# MechaCar_Statistical_Analysis
## Overview
For this challenge I was tasked with performing multiple different analytical tests on production data for a product called the Mechacar to help gain insights that might help the manufaturing team of AutosRUs'.
## Linear Regression to Predict MPG
The first test that I ran was a linear regression model that predicted the mpg of MechaCar Prototypes based on certain metrics.

![alt text](https://github.com/Cdonovan87/MechaCar_Statistical_Analysis/blob/main/Images/linearsum.png)


using the image above I was able to come to some conclussions on important questions.
### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset: 
* According to the summary in the image above the variables/coefficients that provide a non-random amount of variance are the vehicle length, ground clearance and the intercept. This means that these variables, specifically vehicle length and ground clearance seem to have a significant impact on the mechacar prototypes mpg.
### Is the slope of the linear model considered to be zero? Why or why not?:
* Looking at the summary above we can determine since the p-value is less than the significance level of 0.05, its at 5.35e-11, that the slope of the linear model would not be considered to be zero.
### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
* According to the summary above the linear model can effectively predict the mpg of a MechaCar prototype 71% of the time, the r-squared value is equal to 0.7149. This can be seen as not as accurate as a car company would want as it would only have correct predictions of mpg 71% of the time meaning 29% of the time the prediction will be wrong wich is a major percent of failure.
## Summary Statistics on Suspension Coils
The next test that was ran was creating summary statistic tables on the suspension coil's PSI continous variable across all manufacturing lots and the PSI metrics of mean, median, variance, and standard deviation.

![alt text](https://github.com/Cdonovan87/MechaCar_Statistical_Analysis/blob/main/Images/totalsum.png)
![alt text](https://github.com/Cdonovan87/MechaCar_Statistical_Analysis/blob/main/Images/lotsum.png)


Using the above images I was able to answer the following question
### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?:
* Viewing the total summary image above we can see that the overall variance for PSI is 62.3 which is comfortably below the the required specification of not exceeding 100 PSI. This emans that for all lots overall it meets the design specification. However, if we look at the lot summary we will see that while lot 1 and lot 2 both come in well below the the variance limit of 100, 1 and 7.5 variance, Lot 3 comes in at 170 PSI variance which shows us that lot 3 does not meet the design specification of being below 100 PSI.
## T-Tests on Suspension Coils
The third and final test ran was t tests to determine if all lots and each lot individually were statistically different from the population mean of 1,500 pounds per square inc.

![alt text](https://github.com/Cdonovan87/MechaCar_Statistical_Analysis/blob/main/Images/t-test.png)


looking at the above images the following could be gleaned:
* All lots: For all the lots the p-value is equal to 0.06028 which is slightly higher than the significant level of 0.05. This means that we can not reject the null hypothesis and that all the lots together are not statistically different from the population mean of 1,500 PSI.
* Lot 1: Much like all the lots together Lot one is also not statistically different from the mean 1,500 PSI since its p-value is 1 which is significantly higher than 0.05.
* Lot 2: Like the two above Lot 2 has a p-value higher than 0.05, p-value = 0.60772, so it is not statistically different from the 1,500 mean.
* Lot 3: This lot has a p-value of 0.04168, which is lower than 0.05, meaning that we can reject the null hypothesis and say that this lot is statistically different from the mean of 1,500 PSI. Which can be seen with its mean equalling 1,497.
## Study Design: MechaCar vs Competition
When I think of designing a study that can show the difference between the MechaCar and its competitors I must think what metrics must be studied and which of these metrics are of significant interest to a consumer. One of the biggest factors for consumers now is how safe it is.
* The metrics that I would use to perform this statistical study to see if MechaCar models differ from their competetitors in safety rating would be the car/models safety rating. 
* Null Hypothesis: MechaCar safety rating for its models are similar to its competitors.
* For this study I determine that a two-sample T-test would be the best test to use to test the hypothesis as it allows us to compare the mean of two different samples, i.e mechacar and its competitors.
* The data that would be needed for this would be the car models, that we wish to test, from both companies and their subsequent safety ratings.

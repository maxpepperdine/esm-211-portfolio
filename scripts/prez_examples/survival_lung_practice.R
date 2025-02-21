### Survival package example code
## ESM 211
## 2/19/25

#The following code is a simplified version of the example here (I did NOT create it, I only simplified it!): 
# https://bioconnector.github.io/workshops/r-survival.html#getting_started

# Let's get the necessary libraries loaded: 

library(survival) #For survival analysis
library(survminer) #For visualizing the results of the survival analysis
library(dplyr) #For data manipulation and transformation. 

#Get information about lung cancer survival data

?lung 

#Note that no downloading of the data is necessary!

#Take a look at the data. 
head(lung) 
class(lung)
dim(lung)
View(lung)

#Convert this data into a tibble so that is easy to manipulate. 
lung <- as_tibble(lung) # be sure to give your tibble a name. 
lung 

#Now create the survival object and then fit that object to a curve: 
sfit <- survfit(Surv(time, status)~sex, data=lung)
plot(sfit)

#For help understanding survival objects and survival curves: 

?surv

?survfit

#Now use ggsurvplot to make this look a little nicer and be a bit more informative. 
ggsurvplot(sfit)


# Now, make your plot lovely and informative, and include a risk table. 

ggsurvplot(sfit, conf.int=TRUE, pval=TRUE, risk.table=TRUE, 
           legend.labs=c("Male", "Female"), legend.title="Sex",  
           palette=c("dodgerblue2", "orchid2"), 
           title="Kaplan-Meier Curve for Lung Cancer Survival", 
           risk.table.height=.15)

# Well done! 


# Check out this website if you want to learn more from this example: https://bioconnector.github.io/workshops/r-survival.html#getting_started


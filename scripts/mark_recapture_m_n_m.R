#script for simple mark recapture
#Jan 21 2025
#CL Jerde
##################################

library(here)
library(tidyverse)
library(recapr)


# 'recapr' package https://cran.r-project.org/web/packages/recapr/recapr.pdf

# EXAMPLE
n1<- 75 # number of individuals marked in the first sampling
n2<- 100 # number of individuals captured in the second sampling effort
m2<- 4 # number of individuals in the second sampling effort that were marked.
  
# Runs the model, get the estimate of N and calculates a confidence interval
NPetersen(n1, n2, m2) # estimates the population size
ciPetersen(n1,n2,m2)  # 95% CIs using normal approximation ($ciNorm) and bootstrapping ($ciBoot)


# Example from lecture notes
#Sass et al. (2010) Silver carp study
n1_sc <- 4540
n2_sc <- 2239 #approximated from the paper (not reported)
m2_sc <- 30

NChapman(n1_sc, n2_sc, m2_sc)
ciChapman(n1_sc, n2_sc, m2_sc)

NPetersen(n1, n2, m2) 
ciPetersen(n1,n2,m2)  

#PORTFOLIO ASSIGNMENT
# Run the Petersen Estimator for the  Silver Carp parameters (APPLY FUNCTIONS ABOVE). 


# What is the difference between the Petersen and Chapman estimates and the confidence intervals (EXPLAIN)


# How many M&Ms are in this bag? (WRITE YOUR OWN CODE)
n1 <- 78 # number of individuals marked in the first sampling
n2 <- 168 # number of individuals captured in the second sampling effort
m2 <- 19 # number of individuals in the second sampling effort that were marked.  

NPetersen(n1, n2, m2) # estimated the population size
ciPetersen(n1,n2,m2)  # 95% CIs using normal approximation ($ciNorm) and bootstrapping ($ciBoot)

NChapman(n1, n2, m2)
ciChapman(n1, n2, m2)









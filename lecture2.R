# R-script for EC2203 lecture 1
# Author: Jesper Bagger
# Date: 22/09/2020

# Load CPS data

library(AER)

data(CASchools)

# Creating student-teacher ratio and test score variables in dataframe CASchools

CASchools$STR <- CASchools$students/CASchools$teachers
CASchools$Score <- (CASchools$read + CASchools$math)/2

# Test-score vs Student-teacher ratio scatter plot

plot(CASchools$STR,CASchools$Score,
     main = "Student-teacher ratio and test scores",
     xlab = "Student-teacher ratio", 
     ylab = "Test score",
     col = "blue") 
     
# Sample average

mu_STR <- mean(CASchools$STR)
mu_STR

mu_Score <- mean(CASchools$Score)
mu_Score

# Sample variance

s2_STR <- var(CASchools$STR)
s2_STR

s2_Score <- var(CASchools$Score)
s2_Score

# Sample standard deviation

s_STR <- sd(CASchools$STR)
s_STR

s_Score <- sd(CASchools$Score)
s_Score

# Sample covariance and correlation

s_STR_Score <- cov(CASchools$STR,CASchools$Score)
s_STR_Score

r_STR_Score <- cor(CASchools$STR,CASchools$Score)
r_STR_Score




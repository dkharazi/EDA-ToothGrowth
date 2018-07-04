# Import libraries
library(knitr)
library(ggplot2)

## Load the data
data <- ToothGrowth

## Look at a summary of the data
summary(data)

## Look at the data's structure
str(data)

## Look at some of the data's entries
head(data)

## Convert the numeric 'dose' variable to a factor variable
data$dose <- factor(data$dose)

## Boxplots of tooth length for different supplement types
with(data, boxplot(len~supp))

## Levels of tooth length
with(data, tapply(len, supp, mean))

## Boxplots of tooth length for different doses
with(data, boxplot(len~dose))

## Levels of dose
with(data, tapply(len, dose, mean))

## Boxplots of overall tooth length
ggplot(data, aes(dose, len, fill = dose)) +
  facet_grid(.~supp, labeller = as_labeller(c("OJ" = "Orange Juice", "VC" = "Ascorbic Acid"))) +
  labs(title = "The Effect of Vitamin C on Tooth Grown in Guinea Pigs",
       x = "Dose (mg/day)",
       y = "Tooth Length (cm)") +
  scale_fill_discrete(name = "Dose") +
  geom_boxplot()

## Two sample t-test between different supplement types
oj <- with(data, len[supp == "OJ"])
vc <- with(data, len[supp == "VC"])
t.test(oj, vc, alternative = "greater") # reject the null hypothesis

## Two sample t-test between different levels of doses
half <- with(data, len[dose == 0.5])
one <- with(data, len[dose == 1])
two <- with(data, len[dose == 2])
t.test(one, half, alternative = "greater") # reject the null hypothesis
t.test(two, one, alternative = "greater") # reject the null hypothesis
t.test(two, half, alternative = "greater") # reject the null hypothesis
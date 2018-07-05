## Overview

We're going to analyze the ToothGrowth data in the R datasets package. The ToothGrowth dataset demonstrates the effect of vitamin C on tooth growth in Guinea Pigs. The response is the length of odontoblasts (cells responsible for tooth growth) in 60 guinea pigs. Each animal received one of three dose levels of vitamin C (0.5, 1, and 2 mg/day) by one of two delivery methods, orange juice or ascorbic acid (a form of vitamin C and coded as VC). The data contains 60 observations and 3 variables. For more information about the ToothGrowth dataset, please refer to this [site](https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/ToothGrowth.html).

## Variable Descriptions

- 'len:' The tooth length.
- 'supp:' The supplement type.
- 'dose:' The dose in milligrams.

## Objectives

1. Load the ToothGrowth data and perform some basic exploratory data analyses.
2. Provide a basic summary of the data.
3. Use confidence intervals and/or hypothesis tests to compare tooth growth by supp and dose.
4. State all of the assumptions made when making any conclusions.

## Description

There are two general hypotheses that we believe to be true:    
1. We believe that there are not generally different tooth lengths for each type of supplement.    
2. We believe that there are not generally different tooth lengths for each level of dose. 

## Conclusion

Based on a 95% confidence interval, we decide to reject the null hypotheses and prefer the alternative hypotheses, since each p-value is extremely small. In other words, we believe that there are generally different tooth lengths for each type of supplement, and we believe that there are generally different tooth lengths for each level of dose.

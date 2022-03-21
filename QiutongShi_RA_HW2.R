library(tidyverse)
library(magrittr)
library(dplyr)

#working directory set manually

minivan <- read.csv("minivan_hw2.csv")

summary(minivan$Location)
summary(minivan$q_sold)
summary(minivan$ave_p)
summary(minivan$comp_p)
summary(minivan$adv)

#generate two-way plots (i.e., plot of two variables) for all variables except location and zip
attach(minivan)
par(mfrow=c(2,3))
plot(q_sold, ave_p)
plot(q_sold, comp_p)
plot(q_sold, adv)
plot(ave_p, comp_p)
plot(ave_p, adv)
plot(comp_p,adv)

#simple linear regression
simple_lr <- lm(q_sold ~ ave_p, data = minivan)
summary(simple_lr)

summary(simple_lr)$r.sq

#multiple linear regression
multiple_lr <- lm(q_sold ~ ave_p+adv+comp_p, data = minivan)
summary(multiple_lr)

summary(multiple_lr)$r.sq

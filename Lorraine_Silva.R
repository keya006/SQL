library(readxl)
df =read_xlsx("SUM OF ROSE.xlsx")
library(tidyverse)
library(changepoint)

YELEWA = df %>% select(c(YEAR,YELEWA))  # here in place of Yelewa u can have a different column
#thats the only change u need to make . different column, different dataframe name andd those changes will be used in below line Year will remain same throughout

YELEWA_ts <- ts(YELEWA$YELEWA, start = YELEWA$YEAR[1], frequency = 1)

cpt_result = cpt.mean(YELEWA_ts)
cpt_result

change_points <- cpt_result@cpts
change_points

plot(cpt_result,xlab = "Year", ylab = "YELEWA")
abline(v = index(cpt_result)[change_points + 1], col = "red")



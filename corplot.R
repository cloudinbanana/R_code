setwd("C:/Users/Admin/Documents/R"); rm(list=ls()) 
data=read.table("机器学习关联词.txt")
library(corrplot)
corr <- diag(data[,1])

corrplot(corr = corr, method = 'color', order ="AOE", addCoef.col="grey")

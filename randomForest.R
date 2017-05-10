#randomForest
rm(list = ls())
data <- iris
library(randomForest)
system.time(Randommodel <- randomForest(Species ~ ., data=data,importance = TRUE, 
                                        proximity = FALSE, ntree = 99))
print(Randommodel)
?randomForest
example(randomForest)

#devtools::install_github('dmlc/xgboost',subdir='R-package')
install.packages('xgboost')
require(xgboost)
example(xgboost)

data(agaricus.train, package='xgboost')
data(agaricus.test, package='xgboost')
train <- agaricus.train
test <- agaricus.test
# Instacart Kaggle competititiom
# use Market Basket analysis to predict which product will a user re-order
# Uses : IMBA_functions.R
# Inputs : ../input/aisles.csv
#        :../input//departments.csv
#        :../input/order_products_prior.csv
#        :../input/order_products_train.csv
#        :../input/products.csv
# Submission :../submissions/submission.csv
# Objective : For each order_id in the test set, you should predict a space-delimited
#             list of product_ids for that order. If you wish to predict an empty order,
#              you should submit an explicit 'None' value. You may combine 'None' with 
#              product_ids. The spelling of 'None' is case sensitive in the scoring metric.
#              The file should have a header and look like the following:

# order_id,products  
# 17,1 2  
# 34,None  
# 137,1 2 3  
# etc. 

library(readr)
library(dplyr)
library(ggplot2)
library(knitr)
library(DT)

cwd = getwd()
setwd(cwd)

orders <- read_csv("./input/orders.csv")
products <- read_csv('./input/products.csv')
order_products <- read_csv('./input/order_products__train.csv')
order_products_prior <- read_csv('./input/order_products__prior.csv')
aisles <- read_csv('./input/aisles.csv')
departments <- read_csv('../input/departments.csv')
 

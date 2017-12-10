## Instacart Market basket analysis - Springboard capstone proposal
### Problem : 
The goal of this competition was to predict grocery reorders: given a user’s purchase history (a set of orders, and the products purchased within each order), which of their previously purchased products will they repurchase in their next order?
    
### Data Set information  
The dataset for this competition is a relational set of files describing customers' orders over time.  The dataset is anonymized and contains a sample of over 3 million grocery orders from more than 200,000 Instacart users. 
 1. Sample of 3,000,000 grocery orders
 2. Number of users  - over 200,000
 3. For each user,  between 4 and 100 of their orders was provided
 4. The sequence of products purchased in each order was included
 5. The data set also provides for  the week and hour of day the order was placed, and 
 6. a relative measure of time between orders.  
 
 ### Data File descriptions 


 
##### order_products_reorder.csv & order_products_none.csv
These files specify which products were purchased in each order. order_products__prior.csv contains previous order contents for all customers. 'reordered' indicates that the customer has a previous order that contains the product
 
|order_id|product_id|add_to_cart_order|reordered| 
|:---:|:---:|:---:|:---:|
| 1|49302|1|1  |
| 1|11109|2|1  |
| 1|10246|3|0  |

##### orders.csv
This file tells to which set (prior, train, test) an order belongs. You are predicting reordered items only for the test set orders. 'order_dow' is the day of week.
In the eval_set column, 
  1. prior - indicates that this order belongs to the prior order - not the latest order - this also belongs to the training set
  2. train - this is from the latest order of the user and should be used in a training set  
  3. test - this indicates - we need to use this order/user pair to predict which product, the user re-ordered or not

| order_id|user_id|eval_set|order_number|order_dow|order_hour_of_day|days_since_prior_order|
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
|2539329|1|prior|1|2|08|NA  |
|2398795|1|prior|2|3|07|15.0 | 
|473747|1|prior|3|3|12|21.0  |


##### products.csv
| product_id|product_name|aisle_id|department_id|
|:---:|:---:|:---:|:---:|
| 1|Chocolate Sandwich Cookies|61|19|  
| 2|All-Seasons Salt|104|13  |
| 3|Robust Golden Unsweetened Oolong Tea|94|7|  
 
##### aisles.csv
| aisle_id| aisle|
|:---:|:---:|
|1 | prepared soups salads
|2 | specialty cheeses
|3 | energy granola bars

##### departments.csv
|department_id|department|  
|:---:|:---:|
|1|frozen  
|2|other  
| 3|bakery  
 
###### sample_submission.csv
|order_id|products|
|:---:|:---:|
|17|39276  
|34|39276  
|137|39276  


### Approach

1. This is a Classification problem  an in particular a Binomial Classification - Either a user's order has a product that is reordered (1) or is not reordered (0)
2. Appraoch will be similar to the one outlined in this blog post <http://blog.kaggle.com/2017/09/21/instacart-market-basket-analysis-winners-interview-2nd-place-kazuki-onodera/>
3. Predict Re-Orders: which previously purchased products will be in the next order. This depends on the User and the Product
4. Predict None - Will the User's next order NOT contain a re-order. If the probability is p, then we can infer the probability of a re-order is (1-p).
5. Using the probabilities from both the steps above predict the probability that a User will re-order

### Submissions : 
Submissions will include 
1. Code in Python 
2. Powerpoint Slide deck
3. Report 

library(ISLR)
library(MASS)
library(tree)

??Boston
Boston

#----------Question No. 2.1----------
#Q2.2.1
2*5*(6+9-3)

#Q2.1.2
120-(8/5+(28*4))+(5+7)

#Q2.1.3
pi*5^2
pi*5**2

#------Question 2.2-------

x<-c(-2.045 , 5.012 , 6.991 , 7.732 , 1.891 , 0.512 , -9.301)  #c here is concatenation of data
x

#question 2.2.1
floor(x)

#question 2.2.2
ceiling(x)

#question 2.2.3
round(x,2)  #here we consider the digits after the decimal point

#question 2.2.4
floor(x)

#question 2.2.5
min(ceiling(x))

#question 2.2.6
trunc(x) #trunc takes a single numeric argument x and returns a numeric vector containing the integers formed by truncating the values in x toward 0.

#question 2.2.7
signif(x,2)  #here we consider 2 digits as a whole including digits before and after decimal point

#question 2.2.8
sort(x)#Increasing
sort(x,T)#Decreasing

#question 2.2.9
abs(x)#Absolute




#------Question 2.3-------

fruit<-c("apple" , "mango" , "banana" , "orange" , "grape")
fruits_logical<-c(T,F,F,F,F) #way 1
fruits_logical_2<-(fruit == "apple") #way 2

#------QUESTION 5.1-------

#Question 1
# Conditional Statements
set.seed(seed=123)
x=rnorm(3,0,1)
a=x[1]
b=x[2]
c=x[3]
D=b**2-4*a*c
D
if(D>=0)
{
  print("The roots are real")
}else{
  print("The roots are imaginary")
}

# Question 1
vect=rnorm(500,0,1)
mu=0  #population mean
sigma=1  #population sd
Mean=mean(vect)  #sample mean
SD=sd(vect)  #sample sd
value1=mu+3*sigma;value1
value2=mu-3*sigma;value2
if((max(vect) > value1) || (min(vect)< value2)){
  median((vect))
}else{
  print(Mean)
}

# Question 3
set.seed(seed=123)
obs=rnorm(100,0,1)
dummy1=ifelse(obs>0,1,0);dummy1
Mean=mean(dummy1);Mean

# Question 4
vect2=rnorm(100,0,1)
Q1=quantile(vect2,0.25);Q1
Q2=quantile(vect2,0.50);Q2
Q3=quantile(vect2,0.75);Q3

report=ifelse(vect2 <= Q1,0, ifelse(vect2 <= Q2,1,ifelse(vect2 <= Q3,2,3)))
report

#Extra
for(i in 1:5){
  print(i)
}

#---------Question 2.3---------

#question 2.3.2
x_1=as.character(4)
x_2=as.character(38)

x_3.ch=paste(x_1,x_2,sep = "")#

x_3<-as.numeric(x_3.ch)

x_4.ch<-c(strsplit(x_3.ch,split = ""))

#---------Question 2.4----------

# 1
a<-c(1:20)

# 2
seq(1,40,3) # or seq(from=1,to=40,by=3)

# 3
seq(20,0,-2)

# 4
rep(1:5,times=5)

# 5
rep(1:5,each=3)

# 6
rep(c(1,-1),times=20)

# 7
rep(1:3,times=4:6)

# 8
rep(1:5,c(2,5,2,1,3))

# 9
2*a


#----------Question 2.5----------

x<-c(36,5,51,52,37,35,30,35,45,21,72,62,46,88,73,9,46,36,90,17,56,94,53,50,63)

length(x)
head(x,3)#first 3 values
tail(x,4)# last four values
x[(length(x)-3):length(x)]

# 1
length(x)

# 2
x[1]

# 3
x[c(1,25)]

# 4
x[c(1:3,22:25)]

# 5
x[c(2:4,6:25)]
x[c(-1,-5)]
x[-c(1,5)]

# 6 Observations which are greater than 45 and also their position in x
x[x>45]
which(x>45) # gives the position of the observations

# 7 Observation that are greater than equal to 40 and less than 80
x[x>=40 & x<80]

# 8 observations that are less than 10 or greater than 80
x[x<10 | x>80]

# 9 Observations that are not equal to 50
x[x!=50]

# 10 Observations that are equal to 35
x[x==35]
which(x==35) #positions

set.seed(seed = 234)
# 11 select a random sample of size 5 with replacement from the given observations. Also note the unit chosen.
n1=sample(1:25,5,replace = T);n1 # selection of units
x[n1]
match(x[n1],x) #matches the the vector with the sample and returns its positions

# 12 select a random sample of size 5 without replacement from the given observations
n2=sample(1:25,5,replace = F);n2
x[n2]

#-------Question 2.6--------

# 2.6.1 
X<-c(5,3,7,11,4,6,10,9,8,12)

# i)
y1<-(2*x^2-11*x+25);y1

# ii)
y2<-cos(x*pi/180);y2

# iii)
y3<-log(x)-3;y3

# iv)
y4<-log10(x);y4

# v)
y5<-exp(x+5);y5

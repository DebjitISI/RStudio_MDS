
#Q 6.1
data=rpois(20,2)
#i)
set.seed(123)
dataset =replicate(10,rpois(20,2))
dataMean=replicate(10,mean(rpois(20,2)))
dataVar=replicate(10,var(rpois(20,2)))

set.seed(123)
mx=array(0)
vx=as.vector(0)
for(i in 1:10){
  x=rpois(20,2)
  mx[i]=mean(x)
  vx[i]=var(x)
}

mx
vx
# ii)
mean(dataMean)
mean(dataVar)



#Q 6.2

#1.
t1=1
t2=t1+0.5
i=1
while(abs(t2-t1)>0.00001){
  i=i+1
  t1=t2
  t2=t1+(0.5^i)
  
}
t2
t1


repeat{
  i=i+1
  t1=t2
  t2=t1+(0.5^i)
  if(abs(t2-t1)<0.00001) {
    break
  }
}

t2



#2.
set.seed(123)
bias=mean(rnorm(100,5,2))-5

for(i in 1:1000){
  bias[i]=mean(rnorm(100,5,2))-5
}
bias

#3.
set.seed(1234)
n=c(20,50,75,100)
bias=0
mse=0
M=B=array(0)
for(j in 1:4){
  for(i in 1:1000){
    bias[i]=median(rcauchy(n[j],location = 2.5,scale = 1))-2.5
    mse[i]=bias[i]^2
  }
  B[j]=mean(bias)
  M[j]=mean(mse)
}

data.frame(n,B,M)
rm(list=ls())
data=rpois(50,2);data
freq_dist=table(data);freq_dist
cf_less=cumsum(freq_dist);cf_less
cf_more=50-cf_less+freq_dist;cf_more
rev(cumsum(rev(freq_dist)))
rel=freq_dist/50;rel
#mode
freq_dist[which.max(freq_dist)]
data1=as.data.frame(freq_dist);data1
attach(data)
freq_dist[which(freq_dist==max(freq_dist))];max_freq
#find mode using data frame also
d=as.data.frame(freq_dist);d
glimpse(d)
str(d)
attach(d)
#Converting the levels into numbers.Matrix only takes up numbers.
n=as.numeric(d[,1]);n
d1=data.frame(n,Freq);d1
m=as.matrix(d1);m
mode=d[Freq==max(Freq),];mode
#plot
#This is a discrete variable.
plot(freq_dist,type="h")
plot(n,Freq,type="h")
#6
t0=qbinom(0.5,10,0.2);t0
t1=qbinom(0.75,10,0.2);t1
pbinom(10,10,0.2)-pbinom(2,10,0.2)
#Binomial_distn

x=0:10;x
f=dbinom(x,10,0.2)
cdf=pbinom(x,10,0.2)
d=data.frame(x,f,cdf);d

#7
rs=rbinom(20,1,0.4);rs
mean=mean(rs);mean
var_rs=var(rs);var_rs
theroretical_mean=0.4;theroretical_mean
theoretical_var=0.4*(1-0.4);theoretical_var
#practice all theoretical distns
#LIST
A=c(2,5,9,1,7)
B=c(3,3,1)
C=c(5,7,3,8)
weight=list(A=A,B=B,C=C);weight
#i
weight[2]
weight$B
#ii result obtained is also a list.
means=lapply(weight,mean);means
#iii
lapply(weight,sd)
#iv unlist the data and compute the grand mean
ulist=unlist(weight)
class(ulist)
str(ulist)
gm=mean(ulist);gm
#variation in weights due to diets
SSW=lapply(weight,var)
s1=11.2*4;s1
s2= 1.333333*2
s3=4.916667*3
ssw=s1+s2+s3;ssw
n=unlist(lapply(weight,length));n
s=unlist(SSW);s
ssw_final=sum(s*(n-1));ssw_final
#SSB
means=as.data.frame(means);means
SSB=(means-gm)^2*n;SSB
SSB=sum(SSB);SSB
tss=20.78+62.21
tss=var(ulist);tss
#aov
feed=as.factor(rep(c("A","B","C"),c(5,3,4)));feed
summary(aov(ulist~feed))

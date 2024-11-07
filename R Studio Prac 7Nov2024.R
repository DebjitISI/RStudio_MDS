library(nycflights13)
library(dplyr)

head(flights)

#1

small_flights<-flights[,c('arr_delay','dep_delay','distance','air_time')];small_flights

#or small_flights<-select(flights,arr_delay,dep_delay,distance,air_time)

#2

big_flights<-mutate(small_flights,gain=arr_delay-dep_delay,speed=(distance/air_time)*60);big_flights

#3

big_flights[,c("gain","speed")]

#or

transmute(small_flights,gain=arr_delay-dep_delay,speed=(distance/air_time)*60)

#4

flights[(flights$month==1) & (flights$day==1),]

filter(flights,month==1,day==1)

#5

nrow(filter(flights,dep_delay<=120 | arr_time<=120))

#6
filter(flights,between(dep_delay,60,120))

#7

filter(flights,dest=="IAH")

#8

filter(flights,carrier=="UA"| carrier=="DL"| carrier=="AA")

#9

filter(flights, month %in% c(7,8,9))
                             
#10

filter(flights,arr_delay>120,dep_delay<=0)

#11

filter(flights,dep_delay>=60,dep_delay-arr_delay>30)

#12

filter(flights,substr(dest,0,1)=="A")

#13

sum(is.na(flights$dep_time))

#14

not_cancelled=filter(flights,!is.na(dep_delay),!is.na(arr_delay))

#15

summarise(big_flights,avg_delay=mean(dep_delay,na.rm=TRUE),avg_speed=mean(speed,na.rm=TRUE))

#16
summarize(group_by(flights,month,day),
          avg_delay=mean(dep_delay,na.rm=TRUE),
          tot_delay=sum(dep_delay,na.rm=TRUE))

#17 Use pipe operator %>%

not_cancelled %>% group_by(month,day) %>% filter(arr_delay>=0) %>% summarize(avg=mean(arr_delay,na.rm = T))

#or

flights %>%
  group_by(month,day) %>%
  filter(!is.na(dep_delay),!is.na(arr_delay)) %>%
  filter(arr_delay>=0) %>%
  summarize(avg=mean(arr_delay,na.rm = T))

#18 Home Work


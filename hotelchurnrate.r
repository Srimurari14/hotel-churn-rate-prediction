#Author: Srimurari Dachepalli



library(ggplot2)
library(dplyr)
library(e1071)

df<-read.csv("C:\\Users\\murar\\OneDrive\\Desktop\\Bookings.csv")

dim(df)

str(df)

summary(df)

head(df)

which(is.na(df),arr.ind = TRUE)

df[is.na(df[,11]),11] <- mean(df[,11], na.rm = TRUE)

df<-subset(df,!(children==0 & adults==0 & babies==0))

count(df)

rep<-df  %>% group_by(Repeated_guests=df$is_repeated_guest) %>% summarize('No.of Guests'=n())
rep

paste('Percent of repeated guests - ',round((rep[2,2]/nrow(df))*100,2),'%')

df  %>% group_by(Hotel=hotel) %>% summarize('No.of Guests'=n())        

ggplot(data = df)+aes(x = hotel,fill=hotel)+geom_bar()

df  %>% group_by(Year=arrival_date_year) %>% summarize('No.of Guests'=n())        

df  %>% group_by(Month=arrival_date_month) %>% summarize('No_of_Guests'=n())  %>% arrange(desc(No_of_Guests))

ggplot(data = df)+aes(x = arrival_date_year,fill=arrival_date_month)+geom_bar()

df  %>% group_by(Reservation_status=reservation_status) %>% summarize('Count'=n())

ggplot(data = df)+aes(x = reservation_status,fill=hotel)+geom_bar()

df  %>% group_by(Meal=meal) %>% summarize('Count'=n())

ggplot(data = df)+aes(x = hotel,fill=meal)+geom_bar()

df  %>% group_by(Customer=customer_type) %>% summarize('Count'=n())

ggplot(data = df)+aes(x = hotel,fill=customer_type)+geom_bar()

df  %>% group_by(Deposit_type=deposit_type) %>% summarize('Count'=n())

ggplot(data = df)+aes(x = hotel,fill=deposit_type)+geom_bar()

df  %>% group_by(Country=country) %>% summarize('Count'=n())  %>% arrange(desc(Count))

df  %>% group_by(Market=market_segment) %>% summarize('Count'=n())

split = sample(c(TRUE, FALSE), nrow(df), replace=TRUE, prob=c(0.75, 0.25))
train = df[split, ]
test  = df[!split, ]

c(dim(train),dim(test))

head(train)

head(test)

model<-naiveBayes(is_canceled~.,data=train)

model

summary(model)

canceled<-predict(model,test)

summary(canceled)

canceled<-data.frame(canceled)

test<-cbind(test,canceled)

ncol(test)

table(test$is_canceled==test$canceled)

t<-data.frame(table(test$is_canceled==test$canceled))
t

paste('Accuracy - ',(t[2,2]/nrow(test))*100)          

paste('Error rate - ',(t[1,2]/nrow(test))*100) 

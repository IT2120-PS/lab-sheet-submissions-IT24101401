setwd('C:\\Users\\it24101401\\Desktop\\IT24101401_PS_Lab8')

data<-read.table("Data - Lab 8.txt",header=TRUE)
fix(data)
attach(data)

#Q1
popmn<-mean(Nicotine)
popvar<-(Nicotine)

#Q2
#Create null vectors to store sample datasets
samples<-c()
n<-c()

for(i in 1:30){
  s<-sample(Nicotine,5,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('s',i))
}

colnames(samples)=n

s.means<-apply(samples,2,mean)
s.vars<-apply(samples,2,var)

#Q3
samplemean<-mean(s.means)
samplevars<-var(s.means)

#Q4
popmn
samplemean

#Q5
truevar=popvar/5
samplevars

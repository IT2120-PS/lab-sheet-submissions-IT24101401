setwd("C:\\Users\\ASUS\\OneDrive\\Desktop\\IT24101401_Lab07_PS")
getwd()


##Q 1
#Uniform Distribution
#Here, random variable X follows a uniform distribution with a=0 and b=30.

#Part 1
#P(X <= 10)
punif(10,min = 0, max = 30, lower.tail = TRUE)

#Part 2
# P(x>20)= P(X>20)=1-P(X <= 20)
1-punif(20,min = 0, max = 30, lower.tail = TRUE)

#Or 
punif(20,min = 0, max = 30, lower.tail = FALSE)


##Q 2
#Exponential Distribution
#Here, random variable X has exponential distribution with lambda=0.5

#Part 1
# P(X <= 3)
pexp (3,rate = 0.5, lower.tail = TRUE)

#Part 2
# P(X>4)
#P(x>4)=1-P(X <= 4)

1-pexp(4,rate = 0.5,lower.tail = TRUE)

#Or  P(X>4).
pexp (4,rate = 0.5, lower.tail = FALSE)


#Part 3
# P(2<X<4).
#P(2<X<4)=P(X <= 4)-P(X <= 2)
pexp (4,rate = 0.5, lower.tail = TRUE)-pexp(2,rate = 0.5,lower.tail = TRUE)


##Q 3
#Normal Distribution
#Here, random variable X has normal distribution with mean=36.8 and standard deviation=0.4

#Part 1
#It asks to find P(X>=37.9) 
#P(X>=37.9)=1-P(X<37.9)
1-pnorm(37.9,mean = 36.8, sd=0.4, lower.tail = TRUE)

#Part 2
# P(36.4<X<36.9)
#P(36.4<X<36.9)=P(X <= 36.9)-P(X <= 36.4)
#
pnorm(36.9,mean = 36.8, sd=0.4, lower.tail = TRUE)-pnorm(36.4,mean = 36.8, sd=0.4,
                                                         lower.tail = TRUE)

#Part 3
# maximum temperature = "b".
# P(X<b)= 1.2% = 0.012
qnorm(0.012,mean = 36.8, sd=0.4, lower.tail = TRUE)

#Part 4
# P(x>b)= 1.0% = 0.01
qnorm(0.01,mean = 36.8, sd=0.4, lower.tail = FALSE)
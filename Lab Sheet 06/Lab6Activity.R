setwd('C:\\Users\\ASUS\\OneDrive\\Desktop\\IT24101401_Lab6_PS')
getwd()

##Q1
#Part 1
#Binomial Distribution
#Here, random variable X has binomial distribution with n=44 and p=0.92

#Part 2
dbinom(40,44,0.92)

#Part 3
pbinom(35, 44, 0.92,lower.tail = TRUE)

#Part 4
#You need to rearrange the probability statement as follows.
#P(X>=38)=1-P(X<38)=1-P(X <= 37)
#Then command will be as follows.
1- pbinom(37, 44, 0.92,lower.tail = TRUE)
#Or else following command can also used by keeping argument "lower.tail" as "FALSE".
#Here, when that argument is "FALSE", it means that P(x>37) which is same as P(X>=38).
pbinom(37, 44, 0.92,lower.tail = FALSE)



#Part 5
#P(40 <= X <= 42)=P(X <= 42)-P(X <= 39)
#Then command will be as follows.
pbinom(42, 44, 0.92,lower.tail = TRUE)-pbinom(39, 44, 0.92,lower.tail = TRUE)


##Question 02
#Part 1
#Number of babies born in a hospital on a given day

#Part 2
#Poisson distribution
#Here, random variable X has poisson distribution with lambda=5

#part 3
dpois(6,5)


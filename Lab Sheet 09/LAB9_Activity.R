setwd('C:\\Users\\ASUS\\OneDrive\\Desktop\\PS_LAB9')

##Question 01
#Hypothesis: HO: = 3 VS H1: u = 3
#Consider 5% level of significance
x <- c(3, 7, 11, 0, 7, 0, 4, 5, 6, 2)
t.test(x, mu = 3)

##Question 02
#Part 1
#Hypothesis: H0:μ > 25 Vs H1:μ <25
#Consider 5% level of significance
Weight <- c(17.6, 20.6, 22.2, 15.3, 20.9, 21.0, 18.9, 18.9, 18.9, 18.2)
t.test(Weight , mu=25 , alternative= "less")

#Part 2
#To obtain each value separately, we need to store the results of the hypothesis testing
#into a variable. Accordingly, results were stored into "res" variable.
res <- t.test(Weight , mu=25 , alternative= "less")
#To extract test statistic, use "res$statistic" command as follows.
res$statistic
#To extract p value for the test, use "resSp.value" command as follows.
res$p.value
#To extract confidence interval for the test, use "res$conf. int" command as follows.
res$conf.int

##Question 03
#Part 1
#To generate random numbers from a Normal distribution, we can use "rnorm" command as follows.
y <- rnorm(30, mean = 9.8, sd = 0.05)

#Part 2
#Since the true variance is known we can apply one sample z-test.
#Hypothesis : H0 : μ < 10 Vs H1: μ >10
#Consider 5% level of significance
t.test(y , mu=10 , alternative= "greater")
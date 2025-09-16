setwd("C:\\Users\\User\\OneDrive\\Desktop\\Lab_07_PS")
##Question 01
#Uniform Distribution
#Here, random variable x follows a uniform distribution with a=0 and b=30.

#Part 1
#It asks to find P(X<=10).Following command gives the cumulative
#probability (<=),if "lower.tail" agrument equals to "TRUE".
punif(10,min = 0, max = 30, lower.tail = TRUE)

#Part 2
#It asks to find P(X>20). This can find using "punif" command as follows.
#You need to rearrange the probability statement as follows.
#P(X>20) = 1 - P(X<=20)
#Then command will be as follows.
1 - punif(20,min = 0, max = 30, lower.tail = TRUE)
#Or else following command can also used by keeping argument "lower.tail" as "FALSE".
#Here, when that argument is "FALSE", it means that P(X>20).
punif(20,min = 0, max = 30, lower.tail = FALSE)


##Question 02
#Exponential Distribution
#Here, random variable X has exponential distribution with lambda=0.5

#Part 1
#It asks to find P(X<=3). Following command gives the cumulative
#probability (<=), if "lower.tail" argument equals to "TRUE".
pexp(3,rate = 0.5,lower.tail = TRUE)

#Part 2
#It asks to find P(X>4).This can find using "pexp" command as follows.
#You need to rearrange the probability statement as follows.
#P(X>4) = 1 - P(X<=4)
#Then command will be as follows.
1-pexp(4,rate = 0.5,lower.tail = TRUE)
#Or else following command can also used by keeping argument "lower.tail" as "FALSE".
#Here, when that argument is "FALSE", it means that P(X>4).
pexp(4,rate = 0.5,lower.tail = FALSE)

#Part 3
#It asks to find P(2<X<4).This can find using "pexp" command as follows.
#You need to rearrange the probability statement as follows.
#P(2<X<4) = P(X<=4) - P(X<=2)
#Then command will be as follows.
pexp(4,rate = 0.5,lower.tail = TRUE) - pexp(2,rate = 0.5,lower.tail = TRUE)


##Question 03
#Normal Distribution
#Here, random variable X has normal distribution with mean=16.8 and standard deviation=0.4

#Part 1
#It asks to find P(X>=37.9). Following command gives the cumulative
#probability (<=),if "lower.tail" argument equals to "TRUE".
#You need to rearrange the probability statement as follows.
#P(X>=37.9) = 1 - P(X<37.9)
#Then command will be as follows.
1 - pnorm(37.9,mean = 36.8, sd=0.4, lower.tail = TRUE)

#Part 2
#It asks to find P(36.4<X<36.9).This can find using "pnorm" command as follows.
#You need to rearrange the probability atatement as follows.
#P(36.4<X<36.9) = P(X<=36.9)-P(X<=36.4)
#Then command will be as follows.
pnorm(36.9,mean = 36.8, sd=0.4, lower.tail = TRUE) - pnorm(36.4,mean = 36.8, sd=0.4, lower.tail = TRUE)

#Part 3
#Let consider that the maximum temperature they want to find is "b"
#Then, P(X<b) = 1.2% = 0.012
#Here,they want to find the value of "b". This can be done using "qnorm" command.
qnorm(0.012,mean = 36.8, sd=0.4, lower.tail = TRUE)

#Part 4
#Let consider that the minimum temperature they want to find is "b".
#Then, P(X>b) = 1.0% = 0.01
#Here, they want to find the value of "b".This can be done using "qnorm" command.
#Here, you need to make the "lower.tail" argument as FALSE.
qnorm(0.01,mean = 36.8, sd=0.4, lower.tail = FALSE)

#Atrain arrives at a station uniformly between 8:00 a.m. and 8:40 a.m. Let the
#random variable X represent the number of minutes the train arrives after 8:00
#a.m. What is the probability that the train arrives between 8:10 a.m. and 8:25
#a.m.?
punif(25,min = 0, max = 40, lower.tail = TRUE) - punif(10,min = 0, max = 40, lower.tail = TRUE)

#The time (in hours) to complete a software update is exponentially distributed
#with rate λ = 1/3.Find the probability that an update will take at most 2 hours.
pexp(2,rate = 0.333,lower.tail = TRUE)

##Suppose IQ scores are normally distributed with a mean of 100 and a standard
##deviation of 15.
#What is the probability that a randomly selected person has an IQ
#above 130?
pnorm(130,mean = 100, sd=15,lower.tail = FALSE)

#What IQ score represents the 95th percentile?
qnorm(0.95,mean = 100, sd = 15,lower.tail = TRUE)
  

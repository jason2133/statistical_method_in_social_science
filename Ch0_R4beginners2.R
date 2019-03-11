# generate data
set.seed(1)
x <- rnorm(30, 0, 1) # ~ N(0,1)

length(x) # length of n
sum(x)    # sum
mean(x)   # average
median(x) # median

sd(x)     # stadnard diviation
var(x)    # variance

min(x);max(x) # minimum/maximum
which.max(x);which.min(x) # index of minimum/maximum

round(x, 3) # rounding number with 3 digits
rev(x)      # revert x
sort(x)     # sorting x
rank(x)     # rank of x

# some more..
x^2         # squre
abs(x)      # absolute value
log(x^2)    # log with base e 
exp(x)      # exponential
prod(x)     # product

y <- rnorm(30, 0, 1) # another vector
cor(x, y)   # coreation coefficient

plot(x, y)  # scatter plot
?plot       # help

# read data from files
setwd("~/Dropbox/teaching/201901_ST242/r-code/data")
data <- read.table("examscore.txt", header = T)

str(data)

hist(data$Score) # histogram
stem(data$Score) # stem-leaf plot

boxplot(data$Score) # boxplot

attach(data)
boxplot(Score)      # again boxplot
detach(data)

boxplot(Score ~ Group, data = data) # boxplot by groups

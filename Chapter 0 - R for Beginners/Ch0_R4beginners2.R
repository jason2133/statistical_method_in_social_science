# generate data
set.seed(1)
# Random Number 1개로 고정시켜 놓는다

x <- rnorm(30, 0, 1) # ~ N(0,1)

length(x) # length of n
sum(x)    # sum
mean(x)   # average
median(x) # median

sd(x)     # stadnard diviation
var(x)    # variance

min(x);max(x) # minimum/maximum
which.max(x);which.min(x) # index of minimum/maximum
# 위치를 알려준다

round(x, 3) # rounding number with 3 digits
rev(x)      # revert x
sort(x)     # sorting x
# Ascending 오름차순

rank(x)     # rank of x
# 어떤게 Max고 어떤게 Min인지 각 element마다의 순위 Rank를 알려준다!

# some more..
x^2         # squre
abs(x)      # absolute value
log(x^2)    # log with base e 
exp(x)      # exponential
prod(x)     # product

y <- rnorm(30, 0, 1) # another vector
cor(x, y)   # coreation coefficient
# 상관계

plot(x, y)  # scatter plot
?plot       # help

# read data from files
setwd("C:/Users/jason/Desktop/STAT242/data")
# 경로 설정을 잘하자

data <- read.table("examscore.txt", header = T)
# header = T : 위에 있는 건 기준 열 제목으로 읽어버리자

str(data)
# Data 구조가 어떻게 되는지.
# str = structure

hist(data$Score) # histogram
# 히스토그램

stem(data$Score) # stem-leaf plot
# 줄기 잎 그림

boxplot(data$Score) # boxplot
# 박스 플

attach(data)
boxplot(Score)      # again boxplot
detach(data)

boxplot(Score ~ Group, data = data) # boxplot by groups


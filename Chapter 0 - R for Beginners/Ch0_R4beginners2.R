# generate data
set.seed(1)
# Random Number 1���� �������� ���´�

x <- rnorm(30, 0, 1) # ~ N(0,1)

length(x) # length of n
sum(x)    # sum
mean(x)   # average
median(x) # median

sd(x)     # stadnard diviation
var(x)    # variance

min(x);max(x) # minimum/maximum
which.max(x);which.min(x) # index of minimum/maximum
# ��ġ�� �˷��ش�

round(x, 3) # rounding number with 3 digits
rev(x)      # revert x
sort(x)     # sorting x
# Ascending ��������

rank(x)     # rank of x
# ��� Max�� ��� Min���� �� element������ ���� Rank�� �˷��ش�!

# some more..
x^2         # squre
abs(x)      # absolute value
log(x^2)    # log with base e 
exp(x)      # exponential
prod(x)     # product

y <- rnorm(30, 0, 1) # another vector
cor(x, y)   # coreation coefficient
# �����

plot(x, y)  # scatter plot
?plot       # help

# read data from files
setwd("C:/Users/jason/Desktop/STAT242/data")
# ��� ������ ������

data <- read.table("examscore.txt", header = T)
# header = T : ���� �ִ� �� ���� �� �������� �о������

str(data)
# Data ������ ��� �Ǵ���.
# str = structure

hist(data$Score) # histogram
# ������׷�

stem(data$Score) # stem-leaf plot
# �ٱ� �� �׸�

boxplot(data$Score) # boxplot
# �ڽ� ��

attach(data)
boxplot(Score)      # again boxplot
detach(data)

boxplot(Score ~ Group, data = data) # boxplot by groups

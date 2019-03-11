# clean up memory
rm(list = ls())

# set working directory
setwd("~/Dropbox/teaching/201901_ST242/r-code/")

# read data
examscore <- read.table("data/examscore.txt", header = T)

# part of data
str(examscore)
head(examscore)

# histogram
hist(examscore$Score)
# step-and-leaf-plot
stem(examscore$Score)

# numerical summary
# summary
summary(examscore$Score) 

# variance
var(examscore$Score)

# standard deviation
sd(examscore$Score)

# squre root of variance
sqrt(var(examscore$Score))


# boxplot
boxplot(Score ~ Group, data = examscore,
        xlab = "group", ylab = "score")




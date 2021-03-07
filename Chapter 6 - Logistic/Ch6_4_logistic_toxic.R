setwd("~/Dropbox/teaching/201901_ST242/r-code")
toxic <- read.table("data/toxic.txt",header=T)
table(toxic$x,toxic$y)
logistic.toxic <- glm(y ~ x, family="binomial", data=toxic)
summary(logistic.toxic)


rm(list = ls()) 

set.seed(1)

n <- 20
p <- 0.25

x <- dbinom(0:20, 20, 0.25)
y <- dbinom(0:20, 20, 0.50)

names(x) <- 0:20
names(y) <- 0:20

barplot(x, main = "B(20, 0.25)")
barplot(y, main = "B(20, 0.50)")

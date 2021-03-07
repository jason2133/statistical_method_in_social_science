r <- c(1,1,1,1,1,1,1,1,2,2,2,2,2,2,2)
c <- c(1,1,2,3,3,3,3,3,1,1,1,2,2,2,2)
tab <- table(r,c)

# Pearson's chi-squared
obj <- chisq.test(tab,correct=F)
print(obj)

# Fisher's exact test
obj.f <- fisher.test(tab)
print(obj.f)

# randomized test
n.repeat <- 1000
set.seed(1)
tally <- 0
for (i in 1:n.repeat){
    c.1 <- sample(c)
    tab.1 <- table(r,c.1)
    chisq.1 <- chisq.test(tab.1,correct=F)$statistic
    if (chisq.1 >= obj$statistic) tally <- tally+1
}

p.value <- tally/n.repeat
round(p.value, 3)


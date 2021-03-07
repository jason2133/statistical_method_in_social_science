couples <- read.table("~/Dropbox/teaching/201901_ST242/r-code/data/couples.txt",header=T)
attach(couples)
c.0 <- cor(groom,bride)

couples.reg <- lm(bride ~ groom)
summary(couples.reg)

n.repeat <- 1000
tally <- 0 
for (i in 1:n.repeat){
     bride1 <- sample(bride)
     c <- cor(groom, bride1)
     if (c >= c.0) tally <- tally+1
} 
tally <- tally + 1
p.value <- tally/n.repeat
p.value


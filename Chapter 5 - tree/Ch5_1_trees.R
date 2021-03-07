trees <- read.table("~/Dropbox/teaching/201901_ST242/r-code/data/trees.txt", header=T)
attach(trees)
X <- (Diameter/12)*(Diameter/12)*Height
plot(Volume ~ X, xlab="Diameter^2*Height", main="Minitab Tree Data", xlim=c(0,300),ylim=c(0,100))
trees.reg <- lm(Volume ~ X)
summary(trees.reg)
abline(trees.reg$coef, lty="dotted")
detach(trees)

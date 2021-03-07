library(gplots)
two.way <- read.table("~/Dropbox/teaching/201901_ST242/r-code/performance.txt", header=T)
attach(two.way)
Trt <- factor(trt)
Blk <- factor(blk)

one.way.anova <- aov(y ~ Blk)
plotmeans(one.way.anova$residuals ~ Trt, ylim=c(-6,6), main="performance after Blk")

two.way.anova <- aov(y ~ Trt+Blk)
summary.aov(two.way.anova)

Tukey <- TukeyHSD(two.way.anova, "Trt")
print(Tukey)
plot(Tukey)
qtukey(0.95, nmeans=5, df=16)


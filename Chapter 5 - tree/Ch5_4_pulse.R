pulses <- read.table("~/Dropbox/teaching/201901_ST242/r-code/data/pulse.txt",header=T)
attach(pulses)
diff <- pulse2 - pulse1

seven.numbers <- function(x,k){
		     temp <- rep(0,7)
		     temp[1:5] <- summary(x)[-4]
		     temp[6] <- mean(x)
		     temp[7] <- sd(x)
                 names(temp) <- c("min","Q1","Med","Q3","max","Mean","SD")
                 return(round(temp,k))
                 }
seven.numbers(diff,1)

boxplot(diff ~ activity, data = pulses, xlab="activity",ylab="diff")

ran <- 2 - ran
smokes <- 2 - smokes
sex <- 2 - sex
activity <- ifelse(pulses$activity <= 2, 0, 1)

pulse.reg <- lm(diff ~ ran + smokes + sex + height + weight + activity)
summary(pulse.reg)
detach(pulses)
# ??
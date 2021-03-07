rm(list = ls())
pulses <- read.table("~/Dropbox/teaching/201901_ST242/r-code/data/pulse.txt",header=T)
attach(pulses)
diff <- pulse2 - pulse1

ran <- 2 - ran
smokes <- 2 - smokes
sex <- 2 - sex
activity <- ifelse(activity <= 2, 0, 1)

pulse.reg <- lm(diff ~ ran + smokes + sex + height + weight + activity)

# variable selection
# step 1
summary(lm(diff ~ ran))$adj.r.squared #
summary(lm(diff ~ smokes))$adj.r.squared
summary(lm(diff ~ sex))$adj.r.squared
summary(lm(diff ~ height))$adj.r.squared
summary(lm(diff ~ weight))$adj.r.squared

# step 2
summary(lm(diff ~ ran + smokes))$adj.r.squared
summary(lm(diff ~ ran + sex))$adj.r.squared    ##
summary(lm(diff ~ ran + height))$adj.r.squared
summary(lm(diff ~ ran + weight))$adj.r.squared

# step 3
summary(lm(diff ~ ran + sex + smokes))$adj.r.squared ### 
summary(lm(diff ~ ran + sex + height))$adj.r.squared
summary(lm(diff ~ ran + sex + weight))$adj.r.squared

# step 4
summary(lm(diff ~ ran + sex + smokes + height))$adj.r.squared 
summary(lm(diff ~ ran + sex + smokes + weight))$adj.r.squared

# final model is "diff ~ ran + sex + smokes"
obs.1 <- c(64, 72, 68, 77, 56, 95)
obs.2 <- c(78, 91, 97, 82, 85, 77)
obs.3 <- c(75, 93, 78, 71, 63, 76)
obs.4 <- c(55, 66, 49, 64, 70, 68)
obs.pool <- c(obs.1, obs.2,obs.3,obs.4)
xbar.1 <- mean(obs.1)
xbar.2 <- mean(obs.2)
xbar.3 <- mean(obs.3)
xbar.4 <- mean(obs.4)
xbar <- mean(obs.pool)
B.0 <- (xbar.1-xbar)^2+(xbar.2-xbar)^2+(xbar.3-xbar)^2+(xbar.4-xbar)^2
n.repeat <- 10000
tally <- 0
for (i in 1:n.repeat){
	obs.sample <- sample(obs.pool)
      obs.1 <- obs.sample[1:6]
      obs.2 <- obs.sample[7:12]
      obs.3 <- obs.sample[13:18]
      obs.4 <- obs.sample[19:24]
      xbar.1 <- mean(obs.1)
      xbar.2 <- mean(obs.2)
      xbar.3 <- mean(obs.3)
      xbar.4 <- mean(obs.4)
      xbar.sample <- mean(obs.sample)
      B <- (xbar.1-xbar)^2+(xbar.2-xbar)^2+(xbar.3-xbar)^2+(xbar.4-xbar)^2
      if (B >= B.0) tally <- tally + 1
}
tally
p.value <- tally/n.repeat
p.value

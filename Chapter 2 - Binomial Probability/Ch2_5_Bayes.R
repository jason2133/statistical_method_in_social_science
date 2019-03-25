# possible theta
theta <-  (0:10)/10
print(theta)

#############
# 1. priors #
#############
# case 1
prior1 <- 2^(10:0)           # decreasing prior
prior1 <- prior1/sum(prior1) # normalizing
print(round(prior1, 2))      # print!

# case 2
prior2 <- rep(1, 11)         # uniform prior
prior2 <- prior2/sum(prior2) # normalizing
print(round(prior2, 2))      # print!

# case 3
prior3 <- 2^(0:10)           # increasing prior
prior3 <- prior3/sum(prior3) # normalizing
print(round(prior3, 2))      # print

#################
# 2. likelihood #
#################
x <- 8 # data (8 successes)
lk <- dbinom(x, 10, theta) # likelihood: probability of the current data

################
# 3. posterior #
################
post1 <- (lk * prior1)/sum(lk * prior1) # posteior prob for prior 1
print(round(post1, 2))                  # print!

post2 <- (lk * prior2)/sum(lk * prior2) # posteior prob for prior 2
print(round(post2, 2))                  # print!

post3 <- (lk * prior3)/sum(lk * prior3) # posteior prob for prior 3
print(round(post3, 2))                  # print! 

# plot
names(post1) <- names(post2) <- names(post3) <- theta

par(mfrow = c(1,3))

# case 1
barplot(post1, col = rgb(0, 0, 1, alpha = 0.4), ylim = c(0,0.5))
barplot(prior1, add = T, col = rgb(1, 0, 0, alpha = 0.1), border = F)

# case 2
barplot(post2, col = rgb(0, 0, 1, alpha = 0.4), ylim = c(0,0.5))
barplot(prior2, add = T, col = rgb(1, 0, 0, alpha = 0.1), border = F)

# case 3
barplot(post3, col = rgb(0, 0, 1, alpha = 0.4), ylim = c(0,0.5))
barplot(prior3, add = T, col = rgb(1, 0, 0, alpha = 0.1), border = F)



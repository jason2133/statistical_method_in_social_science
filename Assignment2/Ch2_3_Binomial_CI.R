# CI table
n <- 100
theta <- seq(0.01, 0.99, by = 0.01)
c1 <- qbinom(0.025, n, theta)/n
c2 <- qbinom(0.975, n, theta)/n
result <- data.frame(theta = theta, c1 = c1, c2 = c2)

print(result)


# Interpretation of CI

n <- 100
theta <- seq(0.01, 0.99, by = 0.01)
c1 <- qbinom(0.025, n, theta)/n
c2 <- qbinom(0.975, n, theta)/n

true.theta <- 0.25
N <- 100
d <- matrix(0, N, 2)
plot(0, 0, type = "n", 
     xlim = c(0, 1), ylim = c(0, 1), 
     ylab = "", xlab = "theta & p", axes = F)

for (i in 1:N)
{
  set.seed(i)
  p <- rbinom(1, 100, true.theta)/n
  
  id1 <- which.min(abs(c1 - p))
  id2 <- which.min(abs(c2 - p))
  d[i,2] <- theta[id1]
  d[i,1] <- theta[id2]
  
  if (sum(d[i,] > true.theta) != 1) {
    segments(d[i,2], i/N, d[i,1], i/N, pch = 1, col = 2, lwd = 3)  
  } else 
    segments(d[i,2], i/N, d[i,1], i/N, pch = 1, col = 1, lwd = 1.5)
  
}
abline(v = true.theta, col = 4, lwd = 2, lty = 2)
axis(1)
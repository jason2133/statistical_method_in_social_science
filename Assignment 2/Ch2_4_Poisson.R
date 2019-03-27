rm(list = ls()) 

par(mfrow = c(2,2))
set.seed(1)

# Poisson Distribution
x <- dpois(0:20, 5)
y <- dpois(0:20, 10)

names(x) <- 0:20
names(y) <- 0:20

barplot(x, main = "Poisson(5)")
barplot(y, main = "Poisson(10)")

# Approximation of Binomial via Poisson
N <- 2^(2:20)
plot(log(N), dbinom(5, N, 1/N), type = "b", xlab = "X", ylab = "P(X = 5)", ylim = c(0, 0.0035))
abline(h = dpois(5, 1), col = 2, lwd = 2, lty = 2)
legend("bottomright", c("B(n, 1/n)", "Poisson(1)"), 
       pch = c(1, NA), col = c(1,2), cex = 2, lty = c(1,2))

plot(log(N), dbinom(2, N, 1/N), type = "b", xlab = "X", ylab = "P(X = 2)",ylim = c(0.18, 0.215))
abline(h = dpois(2, 1), col = 2, lwd = 2, lty = 2)
legend("topright", c("B(n, 1/n)", "Poisson(1)"), 
       pch = c(1, NA), col = c(1,2), cex = 2, lty = c(1,2))

### CI
n <- 100
tau <- seq(0.5, 46, by = 0.5)

c1 <- qpois(0.025, tau)
c2 <- qpois(0.975, tau)

id1 <- which.min(abs(c1 - 22))
id2 <- which.min(abs(c2 - 22))
d1 <- tau[id1]
d2 <- tau[id2]

print(c(d2, d1))




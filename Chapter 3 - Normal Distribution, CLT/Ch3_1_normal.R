# standard normal distribution
x <- seq(-4, 4, by = 0.001)
y <- dnorm(x, 0, 1)

plot(x, y, ylim = c(0,0.45), main = "N(0,1)",
     xlab = "x", ylab = "f(x)")


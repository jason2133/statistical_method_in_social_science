# Sensitivity with 51% success rate
prob <- NULL
nn <- (1:100) * 100
for (i in 1:100)
{
  n <- nn[i]
  a <- floor(0.51 * n)
  prob[i] <- sum(dbinom(a:n, n, 0.5))
}

plot(prob, xlab = "n/100", ylab = "p-value", type = "b", main = "p-value with 51% success rate")
abline(h= 0.05, col = 2, lty = 2)
abline(v = min(which(prob < 0.05)), col = 4, lty = 3)

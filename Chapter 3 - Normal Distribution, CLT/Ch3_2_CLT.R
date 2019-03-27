# CLT
mu  <- 0.2 # 0.2
par(mfrow = c(2,2))

# plot of Poisson(mu) Distribution
barplot(dpois(0:20, mu), 
        main = paste("Distrbution of Xi: Possion(", mu, ")", sep = ""), 
        col = "skyblue")

# CLT
# Histogram of standardized sum (Z) for n = 4, 20, 100
for (n in c(4, 20, 100))
{
  z <- NULL
  for (i in 1:5000) { # repeat 5000 times
    set.seed(i)
    x <- rpois(n, mu)
    s <- sum(x)
    z[i] <- (s - n * mu)/sqrt(n * mu) # standardization
  }
  
  # Histogram of Z
  hist(z, xlim = c(-4, 4), 
       main = paste("Distribution of Zn when n = ", n, sep = ""),
       probability = T, col = "gray", border = F)
  
  # Add N(0,1) curve for Comparison
  curve(dnorm, add = T, col = 2, lwd = 2, lty = 2) 
}


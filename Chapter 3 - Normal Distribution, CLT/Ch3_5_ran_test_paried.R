# randomized test for a paired designed 
data <- c(14, -7, 8, -5, 15, 1, 11, -1, 5)
d <- mean(data)   # stat
print(d)
n <- length(data) # sample size
print(n)

set.seed(1)       # set seed for reproducibility
N <- 10000
count <- 0
for (i in 1:N)
{
  z <- 2 * rbinom(n, 1, 0.5) - 1     # generate z
  d.star <- mean(z * data)           # stat for gen_data
  if (d.star > d) count <- count + 1 # count
}

# p-value
print(count/N)

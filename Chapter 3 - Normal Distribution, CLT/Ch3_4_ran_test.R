x.a <- c(8.8, 8.4, 7.9, 8.7, 9.1, 9.6)
x.b <- c(9.9, 9.0, 11.1, 9.6, 8.7, 10.4, 9.5)
x <- c(x.a, x.b)

d <- mean(x.b) - mean(x.a)


set.seed(1)
count <- 0
N <- 10000
for (i in 1:N)
{
   id <- sample(length(x), length(x.a))  
   d.star <- mean(x[-id]) - mean(x[id])
   if (d.star > d) count <- count + 1
}

p.value <- count/N

print(p.value)


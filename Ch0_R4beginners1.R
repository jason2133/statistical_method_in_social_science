rm(list = ls()) 
# Remove
# ls : Objects
# ±ò²ûÇÏ°Ô ºñ¿î´Ù
# Remove everything in machine

# creating objects
n <- 15
n
print(n)

# case sensitive
x <- 5
x
X <- 2
X

n <- 10 + 2
n

(10 + 2) * 5

# 
y <- c(1,2,3)
y

z <- c(2,3,4)
z

u <- cbind(y, z)
u

v <- rbind(y, z)
v


M <- data.frame(y, z)
M
str(M)

# online help
?lm # linear regression

??lm # keyword search

# generating sequence
x <- 1:30
x

1:10 - 1

seq(1, 5, by = 0.5)
seq(1, 5, length = 5)

rep(1, 5)

# gnerating random variables
rnorm(10, 0, 1)   # N(0,1)
rbinom(4, 5, 0.2) # B(5, 0.2)
rpois(5, 3)       # Poisson(3)

# types of objects
# vector
x <- c(1,2,5,7)
x
str(x)

# factor
y <- factor(1:3) 
y
str(y)

# matrix
z1 <- matrix(1:6, 3, 2)
z1
str(z1)

z2 <- matrix(1:6, 3, 2, byrow = T)
z2

t(z2) # transpose

# data.frame
x <- 1:4
n <- rep(10, 4)
data.frame(x, n)

# list
x <- "names"
y <- 1:4
L1 <- list(x, y)
L1

L2 <- list(x = x, y = y)
L2

# indexing
y
y[3]

z1
z1[1:3]
z1[4:5]
z1[2,2]


L1[[1]]
L1[1]

L2[["x"]]
L2["x"]
L2$x

# matrix computation
# check dimension
z1; dim(z1)
z2; dim(z2)

z1 + z2
z1 - z2

z1 * z2
z1 / z2

z1 %*% z2 # matrix(multiplication) error!
t(z1) %*% z2 # works
t(z2) %*% z1 # again, works!



# clean up memory
rm(list = ls())

# set working directory
setwd("~/Dropbox/teaching/201901_ST242/r-code/")

# read data
height <- read.table("data/height.txt", header = T)

str(height)
head(height)

# scatter plot
plot(height$Y, height$X, xlab = "Wife", ylab = "Husband")

# correlation coefficient
cor(height$X, height$Y)

# scatter plot of (X, Z) and (Y, Z)
plot(height$Z, height$X, xlab = "Offspring", ylab = "Father")
plot(height$Z, height$Y, xlab = "Offspring", ylab = "Mother")

# correlation matrix
cor(height)

# Standardized Deviances from the Mean
std.X = (height$X - mean(height$X))/sd(height$X) # Father
std.Z = (height$Z - mean(height$Z))/sd(height$Z) # Offspring

mean(std.X[std.X < 1.5 & std.X > 0.5])
mean(std.Z[std.X < 1.5 & std.X > 0.5])

mean(std.X[std.X < -0.5 & std.X > -1.5])
mean(std.Z[std.X < -0.5 & std.X > -1.5])

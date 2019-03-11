rm(list = ls()) 
# Remove
# ls : Objects
# 깔끔하게 비운다
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

# Vector 정의
# y는 1, 2, 3
y <- c(1,2,3)
y

# z는 2, 3, 4
z <- c(2,3,4)
z

# Combine Column (열)
u <- cbind(y, z)
u
str(u)

v <- rbind(y, z)
v

# Data Frame과 rbind 사이의 차이점을 파악하는 것이 중요하다!
M <- data.frame(y, z)
M

# Structure  데이터 구조가 어떤지 알려주는 str
str(M)

# online help
?lm # linear regression
# lm = Linear Model
# ? 물음표를 치면 Linear Regression에 대해 R이 친절하게 알려준다!

# Keyword 키워드를 모른다면 ?? 물음표 2개를 앞에 붙이면 된다!
??lm # keyword search
??linear.model

# generating sequence
x <- 1:30
# Sequence 1부터 30까지
x

1:10 - 1

# 1부터 5까지, 공차가 0.5인 등차수열
seq(1, 5, by = 0.5)

# 역시나 앞에 ?를 붙여주면 seq = sequence에 대해 친절하게 알려준다!
?seq(1, 5, by = 0.5)

# 1부터 5까지, 전체 개수가 5개인 수
seq(1, 5, length = 5)

# 이걸 출력하면 1만 나온
seq(1, 5, 5)

# 1을 5번 반복해라 rep = repeat
rep(1, 5)

set.seed(1)
# set.seed 이거 중요하다!
# fix your code
# 괄호의 값에 아무값이나 넣고 수행하면 
# 가상의 랜덤번호를 발생시켜 랜덤추출을 고정하는 효과가 있음.

# generating random variables
rnorm(10, 0, 1)   # N(0,1)
rnorm(10) # Standard Normal Distribution
# 그냥 개수만 적으면 자동으로 표준정규분포가 되어서 N(0, 1)이 된다!
# 정규분포
# 10개 뽑아내라

rbinom(4, 5, 0.2) # B(5, 0.2)
# 이항분포
# 4개 뽑아내라

rpois(5, 3)       # Poisson(3)
# 포아송
# 5개 뽑아내라 

# types of objects
# vector
x <- c(1,2,5,7)
x
str(x)
# Vector라고 얘기하면 컴퓨터는 무조건 "Column" Vector라고 말한다!

# factor
# 인자
y <- factor(1:3) 
y
str(y)

# matrix
z1 <- matrix(1:6, 3, 2)
z1
str(z1)
# 행렬은 기본으로는 아래로 내려간다
# 1 4
# 2 5
# 3 6
# Vector라고 얘기하면 컴퓨터는 무조건 "Column" Vector라고 말한다!

z2 <- matrix(1:6, 3, 2, byrow = T)
z2
# 근데 Column이 아니라 Row를 적용하고 싶다면 byrow = T라고 적으면 된다!

t(z2) # transpose
# 전치행렬

# data.frame
x <- 1:4
n <- rep(10, 4) # 10을 4번 반복해라!
data.frame(x, n)

# list
x <- "names" # the Character
y <- 1:4 # Number
L1 <- list(x, y)
L1

cbind(x, y)
# cbind(x, y)와 L1을 비교해보자.
# cbind(x, y)는 내가 원하는게 아니다. 이쁘게 안 나온다
# 이때는 LIST를 활용해서 list(x, y) 이렇게 하면 된다!

data.frame(x, y)
# cbind와 비교했을 때 "" 큰 따옴표가 없어졌다는 것을 확인
# Data Frame은 Raw Data를 다루고자 할 때 편하다!

str(data.frame(x, y))

# Object Oriented Programming
# 객체 지향 프로그래밍
# 컴퓨터가 어떤 걸 받아들일 때 "객체"를 받아들인다
# 객체가 어떤건지 파악하는 것이 중요하다
# data frame이 네모낳게 생겼다고 해서 Matrix 곱셈하면 Error가 뜬다!

L2 <- list(x = x, y = y)
L2

# indexing
y
y[3]

z1
z1[1:3]
z1[4:5]
z1[2,2] # 행렬 (2, 2) 위치에 있는걸 Print 해라

L1[[1]]

# element in the data
# list is broken
# Single Character

str(L1[[1]])

L1[1]
# first element
# This is List

str(L1[1])

L2[["x"]]
L2["x"]
L2$x

# matrix computation
# check dimension
z1; dim(z1) # dim은 차원을 말한다
z2; dim(z2)
# ; 세미클론을 활용해서 한 줄에 여러 코드를 사용할 수 있다

z1 + z2 
z1 - z2 

z1 + c(1, 2)

z1
z2

z1 * z2 # 같은 위치에 있는 원소끼리 곱한 것
z1 / z2 # 역시 같은 위치에 있는 원소끼리 나눈 것

# z1 * z2와 z1 %*% z2를 구분하자!

z1 %*% z2 # matrix(multiplication) error!
# 행렬 곱셈 사이즈가 안 맞기 때문에 Error가 뜬다

t(z1) %*% z2 # works
t(z2) %*% z1 # again, works!



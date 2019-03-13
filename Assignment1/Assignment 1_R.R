# CPI

# Clean up Memory
rm(list = ls())

# 경로 설정
setwd("C:/Users/jason/Desktop/STAT242/Assignment1")

cpi <- read.table("CPI.txt", header=T)

# Data Structure
str(cpi)

# 위에 6개
head(cpi)

# 다섯 수치 요약
summary(cpi)

# 분산
sapply(cpi, var)

# 표준편차
sapply(cpi, sd)

# Range 범위
range(cpi$Food)
range(cpi$Housing)
range(cpi$Transportation)
range(cpi$Education)
range(cpi$Recreation)

# 줄기 잎 그림
stem(cpi$Food)
stem(cpi$Housing)
stem(cpi$Transportation)
stem(cpi$Education)
stem(cpi$Recreation)

# 히스토그램
hist(cpi$Food)
hist(cpi$Housing)
hist(cpi$Transportation)
hist(cpi$Education)
hist(cpi$Recreation)

# 박스 플롯
# boxplot(Food~Region, data=cpi)
# boxplot(Housing~Region, data=cpi)

# 분할표


# 상관계수


# 회귀
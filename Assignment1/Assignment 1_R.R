# CPI

# Clean up Memory
rm(list = ls())

# 경로 설정
setwd("C:/Users/jason/Desktop/STAT242/Assignment1")

cpi <- read.table("CPI.txt", header=T)

# Data Structure
str(cpi)

head(cpi)

# 다섯 수치 요약
summary(cpi$Food)
summary(cpi$Housing)
summary(cpi$Transportation)
summary(cpi$Education)
summary(cpi$Recreation)

# 분산
var(cpi$Food)
var(cpi$Housing)
var(cpi$Transportation)
var(cpi$Education)
var(cpi$Recreation)

# 표준편차
sd(cpi$Food)
sd(cpi$Housing)
sd(cpi$Transportation)
sd(cpi$Education)
sd(cpi$Recreation)

# 줄기 잎 그림
stem(cpi$Food)
stem(cpi$Housing)
stem(cpi$Transportation)
stem(cpi$Education)
stem(cpi$Recreation)

# 박스 플롯
# boxplot(Food~Region, data=cpi)
# boxplot(Housing~Region, data=cpi)


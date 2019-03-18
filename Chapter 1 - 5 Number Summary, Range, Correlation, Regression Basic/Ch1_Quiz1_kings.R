# King Height 조선

king <- read.table("data/kings.txt", header=T)

king # 왕

stem(king$age) # 줄기 잎 그림

# 다섯 수치 요약
summary(king$age)

# 히스토그램
hist(king$age)

# 박스플롯
boxplot(king$age)

head(king) # 위 6개
tail(king) # 아래 6개

max(king$age)
min(king$age)


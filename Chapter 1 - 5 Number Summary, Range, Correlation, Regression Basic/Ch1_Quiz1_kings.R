# King Height ����

king <- read.table("data/kings.txt", header=T)

king # ��

stem(king$age) # �ٱ� �� �׸�

# �ټ� ��ġ ���
summary(king$age)

# ������׷�
hist(king$age)

# �ڽ��÷�
boxplot(king$age)

head(king) # �� 6��
tail(king) # �Ʒ� 6��

max(king$age)
min(king$age)

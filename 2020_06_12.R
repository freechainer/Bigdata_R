v5 <- rep(1, times=5)           # 1을 5번 반복
v5

v6 <- rep(1:5, times=3)         # 1에서 5까지 3번 반복
v6

v7 <- rep(c(1,5,9), times=3)    # 1, 5, 9를 3번 반복
v7

v8 <- rep(c(1,2,3,9:12,55,15:19), times=2)
v8

score <- c(90,85,75)
score

names(score)
names(score) <- c("John","Tom","Jane")
names(score)
score

score <- c(90, 85, 70)
score
names(score)
names(score) <- c("John", "Tom", "인행")
names(score)
score

d <- c(1,4,3,7,8)
d[1]
d[2]
d[3]
d[4]
d[5]
d[6]

d <- c(1,4,3,7,8)
d[c(1,3,5)]
d[1:3]
d[seq(1,5,2)]
d[-2]
d[-c(3:5)]

d <- c(12, 44, 364, 721, 8331, 3, 14, 262)
seq(1,8,3)# 1,4,7
d[seq(1,8,3)]  # 12, 721, 14
d[3:5]
d[-c(5:8)] #5,6,7,8

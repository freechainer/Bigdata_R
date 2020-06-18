mydata <- c(60, 62, 64, 65, 68, 69, 120)
quantile(mydata)
quantile(mydata, (0:10)/10)         # 10% 단위로 구간을 나누어 계산
summary(mydata)
# 6. 다중변수 자료의 탐색
# 6.1 산점도

wt <- mtcars$wt
mpg <- mtcars$mpg
plot(wt, mpg,
     main="중량-연비 그래프",
     xlab = "중량",
     ylab = "연비(MPG)",
     col="red",
     pch=19)

vars <- c('mpg','disp','drat','wt')
target <- mtcars[,vars]
head(target)
pairs(target, main="Multi Plots")

iris.2 <- iris[,3:4]
iris.2
point <- as.numeric(iris$Species)
point
color <- c('red','green','blue')
plot(iris.2,
     main="Iris Plot",
     pch=c(point),
     col=color[point])

# 6.2 상관분석

beers <- c(5,2,9,8,3,7,3,5,3,5)
bal <- c(0.1, 0.03, 0.19, 0.12, 0.04, 0.0095, 0.07, 0.06, 0.02, 0.05)

tbl <- data.frame(beers, bal)
tbl
plot(bal~beers, data=tbl)
res <- lm(bal~beers, data=tbl)
abline(res)
cor(beers, bal)


cor(iris[,1:4])



# 6.3 선그래프
# 6.1 선그래프의 작성

month <- 1:12
late <- c(5,8,7,9,4,6,12,13,8,6,6,4)
plot(month,
     late,
     main = "지각생 통계",
     type = "l",
     lty=1,
     lwd=1,
     xlab = "Month",
     ylab = "Late cnt")


month <- 1:12
late1 <- c(5,8,7,9,4,6,12,13,8,6,6,4)
late2 <- c(4,6,5,8,7,8,10,11,6,5,7,3)
plot(month,
     late1,
     main = "Late Students",
     type = "l",
     lty=1,
     col='blue',
     xlab = 'Month',
     ylab = 'Late cnt',
     ylim = c(1,15))
lines(month,
      late2,
      type = 'l',
      col='red ')


# 6.4 자료의 탐색 실습
install.packages("mlbench")
library(mlbench)
data("BostonHousing")
myds <- BostonHousing[,c("crim","rm","dis","tax","medv")]
myds

grp <- c()
for(i in 1:nrow(myds)){
   if(myds$medv[i]>=25.0){
      grp[i] <- "H"
   } else if(myds$medv[i]>17.0){
      grp[i] <- "M"
   } else {
      grp[i] <- "L"
   }
}
grp
grp <- factor(grp)
grp
grp <- factor(grp, levels = c("H","M","L"))
grp
myds <- data.frame(myds, grp)
myds

str(myds)
head(myds)
table(myds$grp)

par(mfrow=c(2,3))
colors <- c("red","orange","yellow","green","blue")
for(i in 1:5){
   hist(myds[,i], main = colnames(myds)[i], col = colors[i])
}
par(mfrow=c(1,1))

par(mfrow=c(2,3))
for(i in 1:5){
   boxplot(myds[,i], main=colnames(myds)[i], col = colors[i])
}
par(mfrow=c(1,1))

boxplot(myds$crim~myds$grp, main="1인당 범죄율")

boxplot(myds$rm~myds$grp, main="방의 개수")


pairs(myds[,-6])

point <- as.integer(myds$grp)
color <- c("red","green","blue")
pairs(myds[,-6], pch=point, col=color[point])


cor(myds[,-6])

library(mlbench)
data("BostonHousing")
myds <- BostonHousing[,c("crim","rm","dis","tax","medv")]

grp <- c()
for(i in 1:nrow(myds)){
   if(myds$medv[i]>=25){
      grp[i] <- 'H'
   } else if(myds$medv[i]>17){
      grp[i] <- 'M'
   } else{
      grp[i] <- 'L'
   }
}
grp <- factor(grp)
grp <- factor(grp, levels = c("H","M","L"))

myds <- data.frame(myds, grp)

str(myds)
head(myds)
table(myds$grp)

colors <- c('red','orange','yellow','green','blue')
par(mfrow=c(2,3))
for(i in 1:5){
   hist(myds[,i], main = colnames(myds)[i], col = colors[i])
}
par(mfrow=c(1,1))

boxplot(myds$crim~myds$grp, main="1인당 범죄율", col=colors[])
boxplot(myds$rm~myds$grp, main="방의 수", col=colors[])
boxplot(myds$dis~myds$grp, main="직업센터까지의 거리", col=colors[])
boxplot(myds$tax~myds$grp, main="재산세", col=colors[])

pairs(myds[,-6])

point <- as.integer(myds$grp)
color <- c("red","green","blue")
pairs(myds[,-6], pch=point, col=color[point])

cor(myds[,-6])
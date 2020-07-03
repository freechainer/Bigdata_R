wt <- mtcars$wt
mpg <- mtcars$mpg
plot(wt, mpg,
     main = "중량-연비 그래프",
     xlab = "중량",
     ylab = "연비(MPG)",
     col='red',
     pch=19)

vars <- c("mpg","disp","drat","wt")
target <- mtcars[,vars]
head(target)
pairs(target,
      main="Multi Plots")

iris.2 <- iris[,3:4]
point <- as.numeric(iris$Species)
point
color <- c('red','green','blue')
plot(iris.2,
     main="Iris plot",
     pch=c(point),
     col=color[point])


par(mfrow=c(1,1))
beers <- c(5,2,9,8,3,7,3,5,3,5)
bal <- c(0.1,0.03,0.19,0.12,0.04,0.0095,0.07,0.06,0.02,0.05)
tbl <- data.frame(beers, bal)
tbl
plot(bal~beers, data=tbl)
res <- lm(bal~beers, data=tbl)
abline(res)
cor(beers, bal)
cor(iris[,1:4])


month=1:12 # 자료 입력
late = c(5,8,7,9,4,6,12,13,8,6,6,4)
plot(month,
     late,
     mmain = '지각생 통계',
     type = "l",
     lty=1,
     lwd=1,
     xlab = "Month",
     ylab="Late cnt"
     )

month=1:12
late1=c(5,8,7,9,4,6,12,13,8,6,6,4)
late2=c(4,6,5,8,7,8,10,11,6,5,7,3)
plot(month,
     late1,
     main = "Late Students",
     type = "l",
     lty=1,
     col="red",
     xlab = "Month",
     ylab="Late cnt",
     ylim = c(1,15))
lines(month,
      late2,
      type = "l",
      col = "blue")


library(mlbench)
data("BostonHousing")
myds <- BostonHousing[,c("crim","rm","dis","tax","medv")]
myds

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
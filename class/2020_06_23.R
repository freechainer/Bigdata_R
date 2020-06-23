#문제 5번

swiss

str(swiss)

max(swiss$Agriculture)
swiss[swiss$Agriculture==max(swiss$Agriculture),]
rownames(swiss[swiss$Agriculture==max(swiss$Agriculture),])

swiss[order(swiss$Agriculture, decreasing = T),]['Agriculture'] 

swiss[swiss$Catholic>=80,]['Agriculture']

swiss[swiss$Examination<20 & swiss$Agriculture<50,][c('Examination','Agriculture')]


#문제 6번
state.x77
class(state.x77)
dt <- data.frame(state.x77)
class(dt)

dt <- dt[dt$Income>=5000,][,c("Income",'Population','Area')]
dt

setwd('/Users/heoinhaeng/Desktop/coding/r/bigdata_r/data')
write.csv(dt, 'rich_state.csv', row.names = T)



# 문제 6번
class(state.x77)
dt <- data.frame(state.x77)
rich_state <- dt[dt$Income>=5000,][,c('Income','Population','Area')]
rich_state
write.csv(rich_state, 'rich_state.csv')


wt <- mtcars$wt
mpg <- mtcars$mpg
plot(wt, mpg, 
     main = "중량-연비 그래프",
     xlab = '중량(WIGHT)',
     ylab = '연비(MPG)',
     col = 'red',
     pch=20)


vars <- c("mpg","disp","drat","wt")
target <- mtcars[,vars]
head(target)
pairs(target, main="Multi Plots")

iris.2 <- iris[,3:4]
point <- as.numeric(iris$Species)
point
color <- c("red","green","blue")
plot(iris.2,
     main="Iris plot",
     pch=c(point),
     col=color[point])

iris.3 <- iris[,1:2]
iris.3
point <- as.numeric(iris$Species)
point
color <- c("red","green","blue")
color
plot(iris.3,
     main="Iris Plot",
     pch=c(point),
     col=color[point])




beers <- c(5,2,9,8,3,7,3,5,3,5)
bal <- c(0.1,0.03,0.19,0.12,0.04,0.0095,0.07,0.06,0.02,0.05)
tbl <- data.frame(beers, bal)
tbl
plot(bal~beers, data=tbl)
res <- lm(bal~beers, data=tbl)
abline(res)
cor(beers,bal)

cor(iris[,1:4])


month <- c(1:12)
late <- c(5,8,7,9,4,6,12,13,8,6,6,4)
plot(month,
     late,
     main = "지각생 통계",
     type = 'l',
     lty=1,
     lwd=1,
     xlab = 'Month',
     ylab = 'Late cnt')



month <- c(1:12)
late1 <- sample(1:15, 12)
late2 <- sample(1:15, 12)
late3 <- sample(1:15, 12) 
late4 <- sample(1:15, 12) 
late5 <- sample(1:15, 12)
plot(month,
     late1,
     main = "Late Students",
     type = 'l',
     lty=1,
     col='red',
     xlab = 'Month',
     ylab = "Late Count",
     ylim = c(1,15)
     )
lines(month,
      late2,
      type = 'l',
      col='blue')
lines(month,
      late3,
      type='l',
      col="green")
lines(month,
      late4,
      type = 'l',
      col='purple')
lines(month,
      late5,
      type = 'l',
      col='black')



install.packages('mlbench')
library(mlbench)
data("BostonHousing")
head(BostonHousing)
class(BostonHousing)
myds <- BostonHousing[,c("crim","rm","dis","tax","medv")]
myds

grp <- c()
for(i in 1:nrow(myds)){
  if(myds$medv[i] >= 25.0){
    grp[i] <- 'H'
  } else if(myds$medv[i] > 17.0){
    grp[i] <- 'M'
  } else {
    grp[i] <- 'L'
  }
}
grp
grp <- factor(grp)
grp
grp <- factor(grp, levels = c('H','M','L'))
grp
myds <- data.frame(myds, grp)
myds

str(myds)
head(myds)
table(myds$grp)



library(mlbench)
data('BostonHousing')
myds <- BostonHousing
myds <- BostonHousing[,c('crim','rm','dis','tax','medv')]
myds

myds1 <- myds[myds$medv>=25,]
myds1[,c('grp')]='H'
myds2 <- myds[myds$medv<25 & myds$medv>17.0,]
myds2[,c('grp')]='M'
myds3 <- myds[myds$medv<=17.0,]
myds3[,c('grp')]='L'

myds <- rbind(myds1, myds2, myds3) 
myds
str(myds)
table(myds$grp)



BostonHousing
ds <- BostonHousing[,c('crim','rm','dis','tax','medv')]
ds

ds.H <- subset(ds, medv>=25)
ds.H


colnames(myds) <- c('범죄율','방개수','거리','재산세율','주택가격')
myds
par(mfrow=c(2,3))
colors <- c('yellow','red','green','blue','purple')
colors
for(i in 1:5){
  hist(myds[,i], main = colnames(myds)[i], col = colors[i])
}
par(mfrow=c(1,1))

par(mfrow=c(2,3))
for(i in 1:5){
  boxplot(myds[,i], main=colnames(myds)[i], col = colors[i])
}
par(mfrow=c(1,1))


par(mfrow=c(2,3))
for(i in 1:5){
  hist(myds[,i], main = colnames(myds)[i], col=colors[i])
}

par(mfrow=c(1,1))
myds
boxplot(myds$crim~myds$grp, main="1인당 범죄율")
boxplot(myds$rm~myds$grp, main="방의 개수")
pairs(myds[,-6])
str(myds)
colnames(myds) <- c('범죄율','방개수','거리','재산세율','주택가격','주택가격 등급')
myds$`주택가격 등급` <- factor(myds$`주택가격 등급`)
point <- as.integer(myds$`주택가격 등급`)
point
color <- c('red','green','blue')
pairs(myds[,-6], pch=point, col=color[point])

cor(myds[,-6])

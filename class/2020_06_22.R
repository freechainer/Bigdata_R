score <- 85

if(score>90){
  grade <- 'A'
} else if(score>80){
  grade <- 'B'
} else if(score>70){
  grade <- 'C'
} else if(score>60){
  grade <- 'D'  
} else {
  grade <- 'F'
}
print(grade)

mtcars
ss = mtcars[mtcars$mpg < 20,]
ss
mpgs <- ss$mpg
rownames(ss)
names(mpgs) <- rownames(ss)
mpgs

ss <- mtcars[mtcars$mpg<20,]
ss
mpgs <- ss$mpg
mpgs
names(mpgs) <- rownames(ss)
mpgs

mydiv <- function(x,y){
  return(x/y)
}

setwd("/Users/heoinhaeng/Desktop/coding/r/source/func")
source('myfunc2.R')

mydiv
a <- mydiv(20,4)
a

setwd('/Users/heoinhaeng/Desktop/coding/r/source/func')
source('myfunc3.R')

mydiv
a <- mydiv(49,51)
a

setwd('/Users/heoinhaeng/Desktop/coding/r/source/func')
source('myfunc.R')

mydiv(10,3)
mydiv(100)
mydiv(100,33)


score <- c(76,84,69,50,95,60,82,71,88,84,50,95,69)
score

which(score==69)
which(score>=85)
max(score)
which.max(score)
min(score)
which.min(score)

which(score==95)
which(score==50)

score <- c(1:1000,123,167,623)
score

which(score==123)
max(score)
which.max(score)
min(score)
which.min(score)
which(score==123)

score <- c(76,84,69,50,95,60,82,71,88,84)
score
idx <- which(score<=60)
idx
score[idx] <- 61
score

idx <- which(score>=80)
idx
score.high <- score[idx]
score.high

score>=80
score[score>=80]
score[which(score>=80)]
which.max(score)
score[which.max(score)]
max(score)

subset(score, score>=80)

iris
which(iris$Petal.Length>5.0)
idx <- which(iris$Petal.Length>5.0)
length(idx)
iris.big <- iris[idx,]
iris.big
length(iris.big)
length(iris.big[,1])


idx <- which(iris[,1:4]>5.0, arr.ind = TRUE)
idx
length(idx)
idx



#챕터 5. 단일변수 자료의 탐색

# 5.1 자료의 종류
# 5.2 단일변수 범주형 자료의 탐색

favorite <- c("WINTER","SUMMER","SPRING","SUMMER","SUMMER","FALL","FALL","SUMMER","SPRING","SPRING")
favorite
table(favorite)
table(favorite)/length(favorite)

ds <- table(favorite)
str(ds)
class(ds)
barplot(ds, main = 'favorite season')
pie(ds, main = 'favorite season')



favorite.color <- c(2,3,2,1,1,2,2,1,3,2,1,3,2,1,2)
ds <- table(favorite.color)
ds
barplot(ds, main = 'favorite color')
colors <- c('green','red','blue') 
names(ds) <- colors
ds
barplot(ds, main = "favorite color", col = colors)
pie(ds, main = "favorite color", col = colors)


airquality
str(airquality)
head(airquality)
max.temp <- max(airquality$Temp)
airquality[(airquality$Temp==97),][c('Month','Day')]
subset(airquality, Temp==max.temp)[c('Month','Day')]

max(airquality[airquality$Month==6,][,'Wind'])

mean(airquality[airquality$Month==7,][,'Temp'])

airquality[airquality$Month==5,]



weight <- c(60,62,64,65,68,89)
weight.heavy <- c(weight, 120)
weight
weight.heavy

mean(weight)
mean(weight.heavy)

median(weight)
median(weight.heavy)

mean(weight, trim = 0.2)
mean(weight.heavy, trim = 0.2)

var(weight)
var(weight.heavy)

sd(weight)
sd(weight.heavy)


mydata <- c(60, 62, 64, 65, 68, 69, 120)
mydata
quantile(mydata)
quantile(mydata, (0:4)/10)
quantile(mydata, (0:10)/10)
summary(mydata)

mydata <- c(100,92,64,72,82,51,74)
mydata
quantile(mydata, (0:10)/10)
quantile(mydata, (0:5)/10)
summary(mydata)


data <- c(1:100)
data
quantile(data)
quantile(data, (0:4)/4)
summary(data)

mydata <- c(60,62,64,65,68,69,120)
var(mydata)
sd(mydata)
range(mydata)
diff(range(mydata))


data <- c(30:72)
data
var(data)
sd(data)
range(data)
diff(range(data))


class(cars)
str(cars)
dist <- cars[,2]
hist(dist, 
     main = 'Histogram for 제동거리',
     xlab = '제동거리',
     ylab = '빈도수',
     border = 'green',
     col = 'green',
     las=1,
     breaks = 5)


range(dist)
quantile(dist)
boxplot(dist, main='자동차 제동거리')

which.max(dist)
dist2 <- dist[-49]

quantile(dist2)

length(dist)

m <- mean(dist)
m
dist
for(i in 1:50){
  val <- abs(dist[i]-m)
  print(val)
}

dist
boxplot.stats(dist)


str(iris)

boxplot(Petal.Length~Species, data=iris, main="품종별 꽆잎의 길이")
boxplot(iris$Petal.Length~iris$Species, main="품종별 꽃잎의 길이")

par(mfrow=c(1,3))
barplot(table(mtcars$carb),
        main = "Barplot of Carburetors",
        xlab = "#of carburetors",
        ylab = "frequency",
        col = 'blue')
barplot(table(mtcars$cyl),
        main = "Barplot of Cylender",
        xlab = "#of cylender",
        ylab = "frequency",
        col = 'red')
barplot(table(mtcars$gear),
        main = 'Barplot of Gear',
        xlab = '#of gears',
        ylab = 'frequency',
        col = 'green')
par(mfrow=c(1,1))

par(mfrow=c(1,3))
pie(table(mtcars$carb),
        main = "Barplot of Carburetors",
        xlab = "#of carburetors",
        ylab = "frequency")
pie(table(mtcars$cyl),
        main = "Barplot of Cylender",
        xlab = "#of cylender",
        ylab = "frequency")
pie(table(mtcars$gear),
        main = 'Barplot of Gear',
        xlab = '#of gears',
        ylab = 'frequency',)
par(mfrow=c(1,1))




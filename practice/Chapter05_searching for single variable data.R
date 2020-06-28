favorite <- c('WINTER','SUMMER','SPRING','SUMMER','SUMMER','FALL','FALL','SUMMER','SPRING','SPRING')
favorite
table(favorite)
table(favorite)/length(favorite)

ds <- table(favorite)
ds
barplot(ds, main = 'favorite season')

ds.new <- ds[c(2,3,1,4)]
ds.new
barplot(ds.new, main = "favorite season")

ds <- table(favorite)
ds
pie(ds, main = "favorite season")


favorite.color <- c(2,3,2,1,1,2,2,1,3,2,1,3,2,1,2)
ds <- table(favorite.color)
ds
barplot(ds, main = "fovorite color")
colors <- c("green",'red','blue')
names(ds) <- colors
ds
barplot(ds, main = 'favorite color', col = colors)

weight <- c(60,62,64,65,68,69)
weight.heavy <- c(weight, 120)
weight
weight.heavy

mean(weight)
mean(weight.heavy)

median(weight)
median(weight.heavy)

mean(weight, trim = 0.2)
mean(weight.heavy, trim = 0.2)


mydata <- c(60,62,65,68,69,120)
quantile(mydata)
quantile(mydata, (0:10)/10)
summary(mydata)


mydata <- c(60,62,64,65,68,69,120)
mydata
sd(mydata)
range(mydata)
diff(range(mydata))


dist <- cars[,2]
hist(dist,
     main = "Histogram for 제동거리",
     xlab = "제동거리",
     ylab = "빈도수",
     border = "blue",
     col = "green",
     las=1,
     breaks = 5)

dist <- cars[,2]
boxplot(dist, main="자동차 제동거리")

boxplot.stats(dist)

boxplot(Petal.Length~Species, data=iris, main="품종별 꽃잎의 길이")

boxplot(iris$Petal.Length~iris$Species, main="품종별 꽃잎의 길이")


par(mfrow=c(1,3))
barplot(table(mtcars$carb),
        main = "barplot of carburetors",
        xlab = '#of carburetors',
        ylab = 'frequency',
        col='blue')
barplot(table(mtcars$cyl),
        main = 'barplot of cylender',
        xlab = '#of carburetors',
        ylab = 'frequency',
        col='blue')
barplot(table(mtcars$cyl),
        main = 'barplot of cylender',
        xlab = '#of cylender',
        ylab = 'frequency',
        col = 'red')
barplot(table(mtcars$gear),
        main = 'barplot of gear',
        xlab = '#of gears',
        ylab = 'frequency',
        col='green')
par(mfrow=c(1,1))

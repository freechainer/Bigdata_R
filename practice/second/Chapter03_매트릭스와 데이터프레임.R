z <- matrix(1:20, nrow = 4, ncol = 5)
z

z2 <- matrix(1:20, nrow = 4, ncol = 5, byrow = T)
z2

x <- 1:4
y <- 5:8
z <- matrix(1:20, nrow = 4, ncol = 5)

m1 <- cbind(x,y)
m1

m2 <- rbind(x,y)
m2

m3 <- rbind(m2, x)
m3

m4 <- cbind(z,x)
m4

z <- matrix(1:20, nrow = 4, ncol = 5)
z

z[2,3]
z[1,4]
z[2,]
z[,4]

z <- matrix(1:20, nrow = 4, ncol = 5)
z

z[2,1:3]
z[1,c(1,2,4)]
z[1:2,]
z[,c(1,4)]


score <- matrix(c(90,85,69,78,
                  85,96,49,95,
                  90,80,70,60),
                nrow = 4, ncol = 3)
score
rownames(score) <- c("John","Tom","Mark","Jane")
colnames(score) <- c("English","Math","Science")
score

score['John','Math']
score['Tom',c('Math','Science')]
score['Mark',]
score[,'English']
rownames(score)
colnames(score)
colnames(score)[2]


city <- c("Seoul","Tokyo","Washington")
rank <- c(1,3,2)
city.info <- data.frame(city, rank)
city.info

iris[,c(1:2)]
iris[,c(1,3,5)]
iris[,c("Sepal.Length","Species")]
iris[1:5,]
iris[1:5,c(1,3)]


dim(iris)
nrow(iris)
ncol(iris)
colnames(iris)
head(iris)
tail(iris)

str(iris)
iris[,5]
unique(iris[,5])
table(iris[,"Species"])

colSums(iris[,-5])
colMeans(iris[,-5])
rowSums(iris[,-5])
rowMeans(iris[,-5])

z <- matrix(1:20, nrow=4, ncol = 5)
z
t(z)

IR.1 <- subset(iris, Species=='setosa')
IR.1

IR.2 <- subset(iris, Sepal.Length>5.0 & Sepal.Width>4.0)
IR.2
IR.2[, c(2,4)]

a <- matrix(1:20, 4, 5)
b <- matrix(21:40, 4, 5)
a
b

2*a
b-5
2*a + 3*b

a+b
b-a
b/a
a*b

a <- a*3
b <- b-5

class(iris)
class(state.x77)
is.matrix(iris)
is.data.frame(iris)
is.matrix(state.x77)
is.data.frame(state.x77)


st <- data.frame(state.x77)
head(st)
class(st)

iris.m <- as.matrix(iris[,1:4])
head(iris.m)
class(iris.m)


iris[,"Species"]
iris[,5]
iris["Species"]
iris[5]
iris$Species

setwd("/Users/heoinhaeng/Desktop/coding/r/bigdata_r/data")
air <- read.csv('airquality.csv', header = T)
head(air)

setwd("/Users/heoinhaeng/Desktop/coding/r/bigdata_r/data")
my.iris <- subset(iris, Species=='setosa')
write.csv(my.iris, "my_iris.csv", row.names = F)



# 연습문제
#1번
# (1)
m <- c(10,40,60,20)
f <- c(21,60,70,30)
score <- cbind(m,f)
score
# (2)
colnames(score) <- c("male","female")
score
# (3)
score[2,]
# (4)
score[,'female']
# (5)
score[3,2]


# 2.
#(1)
st <- data.frame(state.x77)
class(st)
#(2)
st
#(3)
colnames(st)
#(4)
rownames(st)
#(5)
dim(st)
#(6)
str(st)
#(7)
rowSums(st)
rowMeans(st)
#(8)
colSums(st)
colMeans(st)
#(9)
st["Florida",]
#(10)
st[1:50,c('Income')]
#(11)
st['Texas',c("Area")]
#(12)
st['Ohio',c('Population','Income')]
#(13)
st[st$Population>=5000,]
subset(st, Population>=5000)
#(14)
st[st$Income>=4500,c('Population','Income','Area')]
subset(st, Income>=4500)[c('Population','Income','Area')]
#(15)
nrow(st[st$Income>=4500,]) 
nrow(subset(st, Income>=4500))
#(16)
st[st$Area>=100000 & st$Frost>=120,]
subset(st, Area>=100000 & Frost>=120)
#(17)
st[st$Population<2000 & st$Murder<12,]
subset(st, Population<2000 & Murder<12)
#(18)
mean(st[st$Illiteracy>=2.0,c('Income')])
colMeans(subset(st, Illiteracy>=2.0)[c('Income')]) 
#(19)
mean(st[st$Illiteracy<2.0,c('Income')])-mean(st[st$Illiteracy>=2.0,c('Income')])
colMeans(subset(st, Illiteracy<2.0)[c('Income')])-colMeans(subset(st, Illiteracy>=2.0)[c('Income')])
#(20)
rownames(st[st$Life.Exp==max(st$Life.Exp),])
rownames(subset(st, Life.Exp==max(st[,'Life.Exp'])))
#(21)
st["Pennsylvania",c("Income")]
rownames(st[st$Income > st["Pennsylvania","Income"],])
rownames(subset(st, Income > st["Pennsylvania","Income"]))


#3번
#(1)
class(mtcars)
#(2)
dim(mtcars)
#(3)
str(mtcars)
#(4)
help("mtcars")
#(5)
max(mtcars$mpg)
rownames(mtcars[mtcars$mpg==max(mtcars$mpg),])
rownames(subset(mtcars, mpg==max(mtcars$mpg)))
#(6)
min(mtcars[mtcars$gear==4,][c("mpg")])
rownames(mtcars[mtcars$gear==4 & mtcars$mpg==min(mtcars[mtcars$gear==4,][c("mpg")]),])
rownames(subset(mtcars, gear==4 & mpg==min(mtcars[mtcars$gear==4,][c("mpg")])))
#(7)
mtcars['Honda Civic',c('mpg','gear')]         
#(8)
mtcars['Pontiac Firebird',c('mpg')]
rownames(mtcars[mtcars$mpg > mtcars['Pontiac Firebird',c('mpg')],])
rownames(subset(mtcars, mpg>mtcars['Pontiac Firebird',c('mpg')]))
#(9)
mean(mtcars$mpg)
mean(mtcars[,c('mpg')])
#(10)
unique(mtcars$gear)

# 문제. 4
# (1)
class(airquality)
# (2)
head(airquality)
# (3)
airquality[airquality$Temp==max(airquality$Temp),c("Month","Day")]
subset(airquality, Temp==max(airquality[,'Temp']))[c('Month',"Day")]
# (4)
max(airquality[airquality$Month==6,]['Wind'])
max(subset(airquality, Month==6)[,'Wind'])
# (5)
colMeans(airquality[airquality$Month==7,]['Temp']) 
# (6)
mean(airquality[airquality$Month==5,][,'Ozone'], na.rm = T)
mean(airquality[airquality[,'Month']==5,][,'Ozone'], na.rm = T)
# (7)
sum(airquality$Ozone>100, na.rm = T)
nrow(subset(airquality, Ozone>100))


# 문제.5
# (1)
str(swiss)
# (2)
max(swiss$Agriculture)
rownames(swiss[swiss$Agriculture==max(swiss$Agriculture),])
# (3)
swiss[order(swiss$Agriculture, decreasing = T),]
# (4)      
swiss[swiss$Catholic >= 80,]['Agriculture']
#(5)
swiss[swiss$Examination<20 & swiss$Agriculture<50,][,c('Examination','Agriculture')]


# 문제.6
# (1)
a <- state.x77[state.x77[,'Income'] >= 5000,][,c('Income','Population','Area')]
a
setwd('/Users/heoinhaeng/Desktop/coding/r/bigdata_r/data')
write.csv(a, "rich_state.csv", row.names = T)

#(2)
ds <- read.csv('rich_state.csv')
ds
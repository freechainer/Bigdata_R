job.type <- "A"
if(job.type=="B"){
  bonus <- 200
} else {
  bonus <- 100
}
print(bonus)

job.type <- "B"
if(job.type=="B"){
  bonus <- 200
} else {
  bonus <- 100
}
print(bonus)

job.type <- "B"
bonus <- 100
if(job.type=="A"){
  bonus <- 200
}
print(bonus)


score <- 55
if(score>90){
  grade <- "A"
} else if(score > 80){
  grade <- "B"
} else if(score > 70){
  grade <- "C"
} else if(score > 60){
  grade <- "D"
} else{
  grade <- "F"
}

print(grade)


a <- 10
if(a<5){
  print(a)
} else {
  print(a*10)
  print(a/10)
}


a <- 10
b <- 20
if(a>5 & b>5){
  print(a+b)
}
if(a>5 | b>30){
  print(a*b)
}

a <- 10
b <- 20

if(a>b){
  c <- a
} else {
  c <- b
}
print(c)

a <- 10
b <- 20
c <- ifelse(a>b,a,b)
print(c)


for(i in 1:5){
  print('*')
}

for(i in 6:10){
  print(i)
}

for(j in 2:9){
  for(i in 1:9){
    cat(j,"*", i, '=', j*i, '\n')
    }
  cat('\n')
  }

for(j in 2:9){
  for(i in 1:9){
    cat(j, '*', i, '=', j*i, '\n')
  }
  cat('\n')
}


for(i in 1:20){
  if(i%%2==0){
    print(i)
  }
}


for(i in 1:20){
  if(i%%2==1){
    print(i)
  }
}



sum <- 0
for(i in 1:100){
  sum <- sum+i
}
print(sum)


norow <- nrow(iris)
mylabel <- c()
for(i in 1:norow){
  if(iris$Petal.Length[i] >= 5.1){
    mylabel[i] <- 'H'
  } else if(iris$Petal.Length[i] > 1.6){
    mylabel[i] <- 'M'
  } else {
    mylabel[i] <- 'L'
  }
}
print(mylabel)
newds <- data.frame(iris$Petal.Length, mylabel)
head(newds)



sum <- 0
i <- 1
while(i <=100){
  sum <- sum + i
  i <- i + 1
}
print(sum)




sum <- 0
for(i in 1:10){
  sum <- sum+i
  print(i)
  if(i>=5) break
}
sum


sum <- 0
for(i in 1:10){
  if(i%%2==0) next
  sum <- sum+i
  print(i)
}
sum


apply(iris[,1:4], 1, mean)
apply(iris[,1:4], 2, mean)

apply(iris[,1:4], 1, sum)
apply(iris[,1:4], 2, sum)

apply(iris[,1:4], 1, sd)
apply(iris[,1:4], 2, sd)

apply(iris[,1:4], 1, var)
apply(iris[,1:4], 2, var)

apply(iris[,1:4], 1, max)
apply(iris[,1:4], 2, max)

apply(iris[,1:4], 1, min)
apply(iris[,1:4], 2, min)



mymax <- function(x,y) {
  num.max <- x
  if (y > x) {
    num.max <- y
  }
  return(num.max)
}
mymax(10,3)


mymax(10,15)
a <- mymax(20,15)
b <- mymax(31,45)
print(a+b)


mydiv <- function(x,y=2){
  result <- x/y
  return(result)
}
mydiv(2,2)
mydiv(10,3)

myfunc <- function(x,y){
  val.sum <- x+y
  val.mul <- x*y
  return(list(sum=val.sum, mul=val.mul))
}

result <- myfunc(5,8)
s <- result$sum
m <- result$mul
cat("5+8=", s, '\n')
cat('5*8=', m, '\n')

mydiv <- function(x,y=2){
  result <- x/y
  return(result)
}

setwd("/Users/heoinhaeng/Desktop/coding/r/src/func")
source("myfunc.R")

a <- mydiv(20,4)
b <- mydiv(30,4)
mydiv(mydiv(20,2),5)


score <- c(76,84,69,50,95,60,82,71,88,84)
which(score==69)
which(score>85)
max(score)
which.max(score)
min(score)
which.min(score)


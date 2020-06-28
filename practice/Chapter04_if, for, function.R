# 1. 조건문
# 1.1 if-else문

job.type <- 'A'
if(job.type == 'B'){
  bonus <- 200
} else {
  bonus <- 100
}

print(bonus)

job.type <- 'B'
bonus <- 100
if(job.type == 'A'){
  bonus <- 200
}

print(bonus)


job.type <- "A"
if(job.type=="A"){
  bonus <- 1000
} else {
  bonus <- 500
}

print(bonus)

job.type <- "B"
bonus <- 100
if(job.type=="A"){
  bonus <- 200
}
print(bonus)

score <- 50

if(score>90){
  grade <- 'A'
} else if(score>80){
  grade <- 'B'
} else if(score>70){
  grade <- 'C'
} else if(score>60){
  grade <- 'D'
} else{
  grade <- 'F'
}

print(grade)


score <- 59

if(score>90){
  grade <- "A"
} else if(score>80){
  grade <- "B"
} else if(score>70){
  grade <- "C"
} else if(score>60){
  grade <- "D"
} else{
  grade <- "you're idiot"
}

print(grade)


a <- 10
if(a<5){
  print(a)
} else{
  print(a*10)
  print(a/10)
}


a <- 10
b <- 20
if(a>5 & b>5){
  print(a+b)
}
if(a>5 | b>30){
  print(a+b)
}

# 1.2 ifelse문
a <- 10
b <- 20

if(a>b){
  c <- a
} else{
  c <- b
}
print(c)

a <- 10
b <- 20

c <- ifelse(a>b,a,b)
print(c)

a <- 100
b <- 99

c <- ifelse(a<b,a,b)
print(c)


# 2.반복문
# 2.1 for문

for(i in 1:5){
  print('*')
}

for(i in 6:10){
  print(i)  
}


for(i in 1:9){
  cat('2*',i,'=',2*i,'\n')
}

for(j in 2:9){
  for(i in 1:9){
    cat(j, "*", i, "=", j*i, '\n')
  }
  cat('\n')
}

 for(i in 2:9){
  for(j in 1:9){
    cat(i,'*',j,'=',i*j,'\n')
  }
  cat('\n')
 }


for(i in 1:20){
  if(i%%2==0){
    print(i)
  }
}

for(i in 1:100){
  if(i%%2==1){
    print(i)
  }
}

sum <- 0
for(i in 1:100){
  sum <- sum+i
}
print(sum)

# 1~50 사이의 홀수들 숫자 합 출력
sum <- 0
for(i in 1:50){
  if(i%%2==1){
    sum <- sum+i
    print(i)
  }
}
print(sum)

# 1~100 수중에서 3과 5의 최소공배수들의 합 출력

sum <- 0
for(i in 1:100){
  if(i%%3==0 & i%%5==0){
    sum <- sum+i
    print(i)
  }
}
print(sum)

norow <- nrow(iris)
mylabel <- c()
for(i in 1:norow){
  if(iris$Petal.Length[i]>=5.1){
    mylabel[i] <- 'H'      
  } else if(iris$Petal.Length[i]>1.6){
    mylabel[i] <- 'M'
  } else {
    mylabel[i] <- 'L'
  }    
}
print(mylabel)
newds <- data.frame(iris$Petal.Length, mylabel)
newds
head(newds)

norow <- nrow(iris)
norow
mylabel <- c()
for(i in 1:norow){
  if(iris$Petal.Length[i]>=5.1){
    mylabel[i] <- 'H'
  } else if(iris$Petal.Length[i]>1.6){
    mylabel[i] <- 'M'
  } else {
    mylabel[i] <- 'L'
  }
}

print(mylabel)
newds <- data.frame(mylabel)  
newds  
head(newds)

# 2. while문

sum <- 0
i <- 1
while(i<=100){
  sum <- sum+i
  i <- i+1
}
print(sum)

sum <- 0
i <- 1
while(i<=10){
  sum <- sum+i
  i <- i+1
}
print(sum)

sum <- 0
for(i in 1:10){
  sum <- sum+i
  if(i>=5) break
  print(i)
}
print(sum)

sum <- 0
for(i in 1:100){
  sum <- sum+i
  if(i>50) break
  print(i)
}
print(sum)

sum <- 0
for(i in 1:10){
  if(i%%2==0) next
  sum <- sum+i
  print(i)
}
print(sum)

sum <- 0
for(i in 1:100){
  if(i%%2==1) next
  sum <- sum+i
  print(i)
}
print(sum)


# 3. apply() 함수

iris
apply(iris[,1:4],1,mean)
apply(iris[,1:4],2,mean)

lapply(iris[,1:4],mean)
sapply(iris[,1:4],mean)

# 4. 사용자 정의 함수

mymax <- function(x,y){
  num.max <- x
  if(x<y){
    num.max <- y
  }
  return(num.max)
}
mymax(10,5)

max <- function(x,y){
  max.num <- x
  if(x<y){
    max.num <- y
  }
  return(max.num)
}

max(0,1)


max(10,15)
a <- max(20,15)
b <- max(31,45)
print(a+b)

mydiv <- function(x,y=2){
  result <- x/y
  return(result)
}
mydiv(100,)


myfunc <- function(x,y){
  val.sum <- x+y
  val.mul <- x*y
  return(list(sum=val.sum, mul=val.mul))
}

myfunc(5,8)
result <- myfunc(5,8)
result
s <- result$sum
m <- result$mul
cat('5 + 8 =', s)
cat('5 * 8 =', m)

mydiv <- function(x,y=2){
  result <- x/y
  return(result)
}


setwd("/Users/heoinhaeng/Desktop/coding/r/source/func")
source('myfunc.R')

a <- mydiv(20,4)
b <- mydiv(30,4)
a+b
mydiv(mydiv(20,2),5)



# 5. 조건에 맞는 데이터의 위치 찾기
score <- c(76, 84, 69, 50, 95, 60, 82, 71, 88, 84)
score
which(score==69)
which(score>=85)
max(score)
which.max(score)
min(score)
which.min(score)


score <- c(76,84,69,50,95,60,82,71,88,84)
score
idx <- which(score<=60)
score[idx] <- 61
score

idx <- which(score>=80)
idx
score.high <- score[idx]
score.high

score <- c(76,84,69,50,95,60,82,71,88,84)
idx <- which(score>=80)
score[idx]

score <- c(76,84,69,50,95,60,82,71,88,84)
score.high <- subset(score, score>=80)
score.high


idx <- which(iris$Petal.Length>5.0)
idx
iris.big <- iris[idx,]
iris.big

idx <- which(iris[,1:4]>5.0, arr.ind = T)
idx



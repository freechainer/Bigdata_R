# 문제 3번

mtcars
class(mtcars)
dim(mtcars)
str(mtcars)
help("mtcars")
# [, 1]	mpg	Miles/(US) gallon
# [, 2]	cyl	Number of cylinders
# [, 3]	disp	Displacement (cu.in.)
# [, 4]	hp	Gross horsepower
# [, 5]	drat	Rear axle ratio
# [, 6]	wt	Weight (1000 lbs)
# [, 7]	qsec	1/4 mile time
# [, 8]	vs	Engine (0 = V-shaped, 1 = straight)
# [, 9]	am	Transmission (0 = automatic, 1 = manual)
# [,10]	gear	Number of forward gears
# [,11]	carb	Number of carburetors

max.mpg <- max(mtcars$mpg)
rownames(mtcars[mtcars$mpg == max.mpg,])



max(mtcars[,c('mpg')])
rownames(subset(mtcars, mpg==max.mpg))


min(subset(mtcars, gear==4)[,c('mpg')])
rownames(subset(mtcars, gear==4 & mpg==17.8))

mtcars["Honda Civic",c('mpg','gear')]

PFmtg <- mtcars['Pontiac Firebird',c('mpg')]
PFmtg 

colMeans(subset(mtcars, mpg > PFmtg)['mpg'])

unique(mtcars[,'gear'])

# 문제 4번

airquality
class(airquality)
head(airquality)
max(airquality['Temp'])[c('Month','Day')]


# 1. if-else문
job.type <- 'A'
if(job.type == "B"){
  bonus <- 200
} else {
  bonus <- 100
}
print(bonus)

job.type <- "C"
if(job.type == "C"){
  bonus <- 500
} else {
  bonus <- 1000
} 
print(bonus)


job.type <- 'B'
bonus <- 100
if(job.type=="A"){
  bonus <- 200
}
print(bonus)

# 1.3 다중 if-else문
score <- 85

if(score>90){
  grade <- 'A'
} else if (score>80){
  grade <- 'B'
} else if (score>70){
  grade <- 'C'
} else if (score>60){
  grade <- 'D'
} else {
  grade <- 'F'
}

print(grade)

score <- 50

if(score>90){
  grade <- 'A'
} else if (score>80){
  grade <- 'B'  
} else if (score>70){
  grade <- 'C'
} else if (score>60){
  grade <- 'D'
} else {
  grade <- 'Fuck you'
}

print(grade)


score <- 100

if(score>90){
  grade <- "A"
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


a <- 10
b <- 20

if(a>5&b>5){
  print(a+b)
}
if(a>5|b>5){
  print(a*b)
}
if(a>10|b<100){
  print(a-b)
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

c <- ifelse(a<b,a,b)
print(c)


# FOR문
for(i in 1:5){
  print(i)
}

for(i in 10:3){
  print(i)
}

for(i in 3:-3){
  print(i)
}

for(i in 1:9){
  cat(i)
}

for(i in 1:9){
  cat(i,'\n')
}

for(i in 1:9){
  cat('2 *', i, '=', 2*i, '\n')
}

for(j in 2:9){
  for(i in 1:9){
    cat(j,"*", i,'=', i*j,'\n')
  }
cat('\n')
}

for(i in 2:9){
  for(j in 1:9){
    cat(i, '+', j, '=', i+j, '\n')
  }
cat('\n')
}


  
  
  
  
  
  
  
  
for(i in 2:9){
  for(j in 1:9){
    cat(i, '*', j, '=', i*j, '\n')
  }
cat('\n')
}

for(i in 2:10){
  for(j in 2:10){
    cat(i, '^', j, '=', i^j, '\n')
  }
  cat('\n')
}
  
  
  
  
  
  
  
  
  
  
for(i in 2:9){
  for(j in 1:9){
    cat(i, '*', j, '=', i*j, '\n')
  }
  cat('\n')
}

for(i in 1:20){
  if(i%%2==0){
    print(i)
  }
}


for(i in 1:50){
  if(i%%2==1){
    print(i)
  }
}

cnt <- 0
for(i in 1:2000){
  if(i%%3==0 & i%%5==0){
    print(i)
    cnt <- cnt + 1
  }
}
print(cnt)



vec1 <- c()
for(i in 1:2000){
  if(i%%3==0 & i%%5==0){
  vec1 <- c(vec1,i)
  print(vec1)
  }
}
print(vec1)
print(length(vec1))


# test <- c(30,20,10)
# test
# for(i in test){
#   if(test[1]>test[2]|)
#     print(test[2])
# }


v1 <- 1:2000
df <- data.frame(v1)
head(df)

df_t <- df$v1%%3==0 & v1%%5==0
df[df_t,]
length(df[df_t,])

df_s <- subset(df, v1%%3==0 & v1%%5==0)
head(df_s[,'v1'])
df_s[,'v1']
length(df_s[,'v1'])

sum <- 0
for(i in 1:100){
  sum <- sum+i
}
print(sum)


vec1 <- c(1:100)
sum(vec1)


norow <- nrow(iris)
mylabel <- c()
for(i in 1:norow){
  if(iris$Petal.Length[i] >= 5.1){
    mylabel[i] <- 'H'
  } else if(iris$Petal.Length[i] >1.6){
    mylabel[i] <- 'M'
  } else {
    mylabel[i] <- 'L'
  }
}

print(mylabel)
newds <- data.frame(iris$Petal.Length, mylabel)
newds
colnames(newds) <- c("Petal.lenght",'label')
newds
head(newds)














norow <- nrow(iris)
norow
mylabel <- c()
for(i in 1:norow){
  if(iris$Petal.Length[i]>=5.1){
    mylabel[i] <- "H"
  } else if(iris$Petal.Length[i]>1.6){
    mylabel[i] <- "M"
  } else{
    mylabel[i] <- "L"
  }
}

print(mylabel)
newds <- data.frame(iris$Petal.Length, mylabel)
colnames(newds) <- c('petal.lenght', 'label')
newds
head(newds)



iris.1 <- subset(iris, Petal.Length>=5.1)
iris.1 <- iris.1[,'Petal.Length']
iris.1
vec.1 <- rep("H", times=length(iris.1))
vec.1
iris.1 <- data.frame(iris.1,vec.1)
iris.1

iris.2 <- subset(iris, Petal.Length>1.6 & Petal.Length<5.1)
iris.2 <- iris.2[,'Petal.Length']
iris.2
vec.2 <- rep("M", times=length(iris.2))
vec.2
iris.2 <- data.frame(iris.2, vec.2)
iris.2

iris.3 <- subset(iris, Petal.Length <= 1.6)
iris.3 <- iris.3[,'Petal.Length']
iris.3
vec.3 <- rep("L", times=length(iris.3))
vec.3
iris.3 <- data.frame(iris.3, vec.3)
iris.3


colnames(iris.2) <- c('iris.1', 'vec.1')
colnames(iris.3) <- c('iris.1','vec.1')
head(iris.3)
head(iris.1)
length(iris.1[,'iris.1'])
length(iris.2[,'iris.1'])
head(iris.2)
head(iris.3)
length(iris.3[,'iris.1'])
rbind(iris.1, iris.2, iris.3)


norow <- nrow(iris)
norow
label <- c()
  for(i in 1:norow){
    if(iris$Petal.Length[i] >= 5.1){
      label[i] <- 'H'
    } else if(iris$Petal.Length[i]>1.6){
      label[i] <- 'M'
    } else{
      label[i] <- 'L'
    }
}
print(label)
newds <- data.frame(iris$Petal.Length, label)
newds
colnames(newds) <- c('Petal.length','Label')
newds


norow <- nrow(iris)
norow
label <- c()
for(i in 1:norow){
  if(iris$Petal.Length[i]>=5.1){
    label[i] <- 'H'
  } else if(iris$Petal.Length[i]>1.6){
    label[i] <- "M"
  } else{
    label[i] <- 'L'
  }
}

print(label)
newds <- data.frame(iris$Petal.Length, label)
newds
colnames(newds) <- c('Lenght', 'label')
newds



# while문

# while(비교조건){
#   반복할 명령문(들)
# }




sum <- 0
for(i in 0:100){
  sum <- sum+i
}
print(sum)

vec <- c(0:100)
sum(vec1)














sum <- 0
i <- 0
while(i <= 10){
  sum <- sum+i
  i <- i+1
}
print(sum)

sum <- 0
for(i in 0:10){
  sum <- sum+i
}
print(sum)

vec <- c(0:10)
sum(vec)














sum <- 0
i <- 0
while(i <= 99){
  sum <- sum+i
  i <- i+1
}
sum

sum <- 0
for(i in 0:99){
  sum <- sum+i
}
print(sum)



sum <- 0
for(i in 1:10){
  sum <- sum+i
  if(i>=5) break
  print("TEST")
}
sum




sum <- 0
i <- 1
while(i<=10){
  sum <- sum+i
  print(sum)
  if(i>=5) break
  i <- i+1
  print("TEST")
}
print(sum)


sum <- 0
for(i in 1:10){
  if(i%%2==0) next
  sum <- sum+i
  print(i)
}
sum

sum <- 0
i <- 0
while(i<10){
  i <- i+1
  if(i%%2==0) next
  sum <- sum+i
}
print(sum)




iris
apply(iris[,1:4],1,mean)
apply(iris[,1:4],2,mean)

iris
apply(iris[,1:4],1,sum)
apply(iris[,1:4],2,sum)

iris
apply(iris[,1:4],1,max)
apply(iris[,1:4],2,max)

iris
apply(iris[,1:4],1,median)
apply(iris[,1:4],2,median)

iris
apply(iris[,1:4],1,min)
apply(iris[,1:4],2,min)



mymax <- function(x,y){
  num.max <- x
  if(x < y){
    num.max <- y
  }
  return(num.max)
}

mymax(10,15)

mymax <- function(x,y){
  if(x>y){
    return(x)
  }
  return(y)
}

mymax(100,50)

mymin <- function(x,y){
  if(x>y){
    return(y)
  }
  return(x)
}

mymin(10,20)


mymax(100,15)
a <- mymax(20,30)
b <- mymax(300,200)
print(a+b)

mymin(100,15)
a <- mymin(20,30)
b <- mymin(300,200)
print(a+b)

mydiv <- function(x,y=2){
  return(x/y)
}

mydiv(10)
mydiv(10,5)
mydiv(x=50,y=10)

calculator <- function(a, b, c='+') {
  if(c == "+") {
    x = a+b
  } else if(c == "-"){
    x = a-b
  } 
  return(x)
}
calculator(1,2,'-')

c(1,2,)



myfunc <- function(x,y){
  val.sum <- x+y
  val.mul <- x*y
  return(list(sum=val.sum, mul=val.mul))
}

result <- myfunc(5,8)
print(result$sum)
print(result$mul)
s <- result$sum
m <- result$mul
cat('5 + 8 =',s,'\n')
cat('5 * 8 =', m, '\n')

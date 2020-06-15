v1 <- 50:90
v1
v2 <- c(1,2,5,50:90)
v2
v3 <- seq(1,101,3)
v3
v4 <- seq(0.1,1.0,0.1)
v4
v5 <- rep(1,times=5)
v5
v6 <- rep(1:5, times=3)
v6

d <- c(1,4,3,7,8)
d[c(1,3,5)]
d[1:3]
d[seq(1,5,2)]
d[-2]
d[-c(3:5)]

GNP <- c(2090,2450,960)
GNP
names(GNP) <- c("Korea","Japan","Nepal")
GNP
GNP[1]
GNP["Korea"]
GNP[c("Korea","Nepal")]


v1 <- c(1,5,7,8,9)
v1
v1[2] <- 3
v1
v1[c(1,5)] <- c(10,20)
v1

d <- c(1,4,3,7,8)
2*d
d-5
3*d+4
d%%2
d^2

x <- c(1,2,3)
y <- c(4,5,6)
x+y
x*y
z <- x+y
z

x <- c(1,2,3)
y <- c(4,5,6)
x+y
x*y
z <- x+y
z

x <- c(1,2,3,41,124,6123,8287,23,215,73)
sum(x)
mean(x)
median(x)
max(x)
min(x)
var(x)
sd(x)
sort(x)
sort(x, decreasing = TRUE)
range(x)
length(x)

d <- c(1,2,3,4,5,6,7,8,9,10)
sum(d)
sum(2*d)
length(5)
mean(d[1:5])
max(d)
min(d)
sort(d)
sort(d, decreasing = TRUE)
sum(d)/length(d)

d <- c(1:10)
d

sort(x=d, decreasing = TRUE)
sort(d, TRUE)
sort(decreasing = TRUE, x=d)
#sort(TRUE, d)
sort(x=d)
sort(d, method="shell")
sort(d, method="quick")


d <- 1:9
d
d>=5
sum(d>=5)
d[d>=5]
sum(d[d>=5])

d == 5
condi <- d>5 & d<8
condi
d[condi]
sum(d[condi])

vec <- c(3:7, 223, 300:303, 154)
vec
vec > 200
sum(vec>200)
vec[vec>200]
sum(vec[vec>200])
mean(vec[vec>200])
sd(vec[vec>200])
var(vec[vec>200])

# 160 이하인 원소대상
# avector 의 TRUE인 것들의 개수
# avector 의 TRUE인 것들의 sum, mean 계산하기
avector <- c(153, 232, 323, 12, 323, 22 ,12)
avector<=160
avector[avector<=160]
avector[c(1,4,6,7)]
avector[c(TRUE, FALSE, FALSE, TRUE, FALSE, TRUE, TRUE)]

bvector <- avector<=160
bvector
avector[bvector]

sum(avector<=160)
sum(avector[avector<=160])
mean(avector[avector<=160])
sd(avector[avector<=160])
var(avector[avector<=160])


ds <- c(90,85,70,84)
my.info <- list(name='Tom', age=60, status=TRUE, score=ds)
my.info
my.info[[1]]
my.info[1]
my.info$age
my.info[[4]]
my.info[4]

#리스트
ds <- c(100,99,98,99)
my.info <- list(phone='010-1234-1234', grade='A+', score=ds, sex="man", class="advanced")
my.info
my.info$sex
my.info[1]
my.info[[1]]
my.info$grade
my.info$phone

#팩터
bt <- c('A','B','B','O','AB','A')
bt
bt.new <- factor(bt)
bt
bt.new
bt[5]
bt.new[5]
levels(bt.new)
as.integer(bt.new)
bt.new[7] <- 'B'
bt.new[8] <- 'C'
bt.new

z <- matrix(1:20, nrow=4, ncol=5)
z

z2 <- matrix(1:20, nrow=4, ncol=5, byrow = T)
z2

x <- 1:4
y <- 5:8
z <- matrix(1:20, nrow = 4, ncol = 5)

m1 <- cbind(x,y)
m1

m2 <- rbind(x,y)
m2

m3 <- rbind(m2,x)
m3

m4 <- cbind(z,x)
m4

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
z[,c(1,4)]%%2

score <- matrix(c(90,85,69,78,85,96,49,95,90,80,70,60),nrow=4,ncol=3)
score
rownames(score) <- c('John','Tom','Mark','Jane')
colnames(score) <- c('English','Math','Science')
score

score['John','Math']
score['Tom',c('Math','Science')]
score['Mark',]
score[,'English']
rownames(score)
colnames(score)
colnames(score)[2]

# 벡터 만들기

x <- c(1,2,3)
y <- c("a","b","c")
z <- c(TRUE, TRUE, FALSE, TRUE)
x
y
z

w <- c(1,2,3,"a","b","c")
w

v1 <- 50:90
v1
v2 <- c(1,2,5,50:90)
v2

v3 <- seq(1,101,3)
v3

v4 <- seq(0.1,1.0,0.1)
v4

v5 <- rep(1,times=5)
v5

v6 <- rep(1:5, times=3)
v6

v7 <- rep(c(1,5,9), times=3)
v7

score <- c(90,85,70)
score

naems(score)
names(score) <- c("John","Tom","Jane")
names(score)
score

d <- c(1,4,3,7,8)
d[1]
d[2]
d[3]
d[4]
d[5]
d[6]

d <- c(1,4,3,7,8)
d[c(1,3,5)]
d[1:3]
d[seq(1,5,2)]
d[-2]
d[-c(3:5)]

GNP <- c(2090,2450,960)
GNP

names(GNP) <- c("Korea","Japan","Nepal")
GNP
GNP[1]
GNP["Korea"]
GNP[c("Korea","Nepal")]

v1 <- c(1,5,7,8,9)
v1

v1[2] <- 3
v1

v1[c(1,5)] <- c(10,20)
v1

d <- c(1,4,3,7,8)
2*d
d-5
3*d+4

x <- c(1,2,3)
y <- c(4,5,6)
x+y
x*y
z <- x+y
z

d <- c(1,2,3,4,5,6,7,8,9,10)
sum(d)
sum(2*d)
length(d)
mean(d[1:5])
max(d)
min(d)
sort(d)
sort(d,decreasing = FALSE)
sort(d,decreasing = TRUE)

v1 <- median(d)
v1

v2 <- sum(d)/length(d)
v2

d <- c(1,2,3,4,5,6,7,8,9,10)
sort(x=d,decreasing = FALSE)
sort(x=d, decreasing = TRUE)
sort(x=d, TRUE)
sort(d, TRUE)
#sort(TRUE, d)

sort(d)

d <- c(1,2,3,4,5,6,7,8,9)
d>=5
d[d>5]
sum(d[d>5])
d==5

condi <- d>5 & d<8
condi

ds <- c(90,85,70,84)
my.info <- list(name="Tom", age=60, status=TRUE, score=ds)
my.info
my.info[[1]]
my.info$name
my.info[[4]]

bt <- c('A','B','B','O','AB','A')
bt.new <- factor(bt)
bt
bt.new
bt[5]
bt.new[5]
levels(bt.new)
as.integer(bt.new)
bt.new[7] <- 'B'
# bt.new[8] <- 'C'
bt.new

# 데이터프레임
city <- c("Seoul","Tokyo","Washington")
rank <- c(1,3,2)
city.info <- data.frame(city, rank)
city.info
city.info <- data.frame(rank, city)
city.info


head(iris)
class(iris)

iris
iris[,c(1:2)]
iris[,c(1,3,5)]
iris[,c("Sepal.Length","Species")]
iris[1:5,]     
iris[1:5,c(1:3)]     

dim(iris)
nrow(iris)
ncol(iris)
colnames(iris)
head(iris)
tail(iris)

str(iris)          #데이터셋 요약 정보 보기
iris[,5]           #품종 데이터 보기 
unique(iris[,5])
table(iris[,"Species"])

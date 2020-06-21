# 1.매트릭스

# 1.2 매트릭스 만들기

z <- matrix(1:20, nrow = 4, ncol = 5)
z

z2 <- matrix(1:20, nrow=4, ncol=5, byrow = TRUE)
z2

x <- 1:4
y <- 5:8
z <- matrix(1:20, nrow=4, ncol=5)
x
y
z

m1 <- cbind(x,y)
m1
m2 <- rbind(x,y)
m2
m3 <- rbind(m2,x)
m3
m4 <- cbind(z,x)
m4

# 1.3 매트릭스에서의 값 추출
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

# 1.4 매트릭스의 행과 열에 이름 지정
score <- matrix(c(90,85,69,78,85,96,49,95,90,80,70,60),nrow = 4, ncol = 3)
score
rownames(score) <- c("John","Tom","Mark","Jane")
colnames(score) <- c("English","Math","Science")
score

score
score["John","Math"]
score["Tom",c('Math','Science')]
score['Mark',]
score[,'English']
rownames(score)
colnames(score)
colnames(score)[2]


#2. 데이터프레임
# 2.1 데이터프레임의 개념
# 2.2 데이터프레임 만들기

city <- c("Seoul","Tokyo","Washington")
rank <- c(1,3,2)
city.info <- data.frame(city, rank)
city.info # 열 방향으로 결합된다는 것을 알 수 있다.

# 2.3 iris 데이터셋
iris
iris[,c(1:2)]
iris[,c(1,3,5)]
iris[,c("Sepal.Length","Species")]
iris[1:5,]
iris[1:5,c(1,3)]

# 3. 매트릭스와 데이터프레임 다루기

# 3.1 데이터셋의 기본 정보 확인

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

# 3.2 매트릭스와 데이터레임에서 사용하는 함수

colSums(iris[,-5])
colMeans(iris[,-5])
rowSums(iris[,-5])
rowMeans(iris[,-5])

z <- matrix(1:20, nrow=4, ncol=5)
z
t(z)

IR.1 <- subset(iris, Species=="setosa")
IR.1

IR.2 <- subset(iris, Sepal.Length>5.0 & Sepal.Width>4.0)
IR.2

IR.2[,c(2,4)]

a <- matrix(1:20,4,5)
a
b <- matrix(21:40,4,5)
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
a
b

# 3.3 매트릭스와 데이터프레임의 자료구조 확인
class(iris)
class(state.x77)
is.matrix(iris)
is.data.frame(iris)
is.matrix(state.x77)
is.data.frame(state.x77)

state.x77
st <- data.frame(state.x77)
st
head(st)
class(st)
class(iris)
iris.m <- as.matrix(iris[,1:4])
class(iris.m)


iris[,"Species"]
iris[,5]
iris["Species"]
iris[5]
iris$Species


# 4. 파일 데이터 읽기/쓰기
setwd('/Users/heoinhaeng/Desktop/coding/r/bigdata_r/data')
air <- read.csv("airquality.csv", header = T)
air
head(air)

setwd('/Users/heoinhaeng/Desktop/coding/r/bigdata_r/data')
my.iris <- subset(iris, Species=='setosa')
my.iris
write.csv(my.iris, "my_iris.csv", row.names = F)

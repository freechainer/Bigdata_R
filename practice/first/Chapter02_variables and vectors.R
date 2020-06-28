# 1. R의 기본 연산

# 1-1. 산술연산과 주석

2+3
(3+6)*8
2^3

7+4
# 2^3

# 1-2. 산술연산 함수

log(10)+5
sqrt(25)           # 제곱긐
max(5,3,2)

log(10)
sqrt(100)
max(100,10,25)
min(100,23,-100)
abs(-123)           # 절대값
factorial(10)
sin(pi/10)
cos(10)
tan(20)


# 2. 변수

a <- 10
b <- 20
c <- a+b
print(c)

# 2.1 변수의 개념

# 2.2 변수명 지정

# 1. 첫 글자는 영문자(알파벳)나 마침표(.)로 시작하는데, 일반적으로 영문자로 시작한다.
# avg, .avg
# 12th는 숫자로 시작했기 때문에 사용 불가

# 2. 두 번째 글자부터는 영문자,숫자,마침표,밑줄을 사용할수있다.
# 
# 3. 대문자와 소문자를 구분한다
# 
# 4. 변수명 중간에 빈칸을 넣을 수 없다.

# 2.3 변수에 값 저장 및 확인

a <- 125
a
print(a)


# 2.4 변수의 자료형

# 1. 숫자형(1,2,3,-4,12.8) 정수와 실수 모두 가능
# 2. 문자형 'Tom','Jane' 작은 따옴표나 큰 따옴표로 묶어서 표현
# 3. 논리형 TRUE, FALSE 반드시 따옴표가 없는 대문자로 표기하며, T나 F로 줄여서 사용하는 것도 가능
# 4. 특수값 NULL, NA, NaN, Inf, -Inf

# 2.5 변수의 값 변경

a <- 10
b <- 20
a+b
a <- "A"
a+b

# 3. 벡터의 이해
# 3.1 벡터의 개념
# 3.2 벡터 만들기

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
v3 <- seq(1,101,3)            # 일정한 간격의 숫자로 이루어진 벡터 생성
v3
v4 <- seq(0.1,1.0,0.1)
v4

v5 <- rep(1, times=5)
v5 
v5 <- rep(1, each=5)
v5

v6 <- rep(1:5, times=3)
v6
v6 <- rep(1:5, each=3)
v6 

v7 <- rep(c(1,5,9), times=3)
v7

v7 <- rep(c(1,5,9), each=3)
v7

score <- c(90,85,70)
score
names(score)
names(score) <- c("John","Craig","James")
names(score)
score
str(score)
class(score)


d <- c(1,4,3,7,8)
d

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
GNP['Korea']
GNP[c('Korea',"Nepal")]
GNP[c(1:3)]


v1 <- c(1,5,7,8,9)
v1
v1[2] <- 3
v1
v1[c(1,5)] <- c(10,20)
v1

#4. 벡터의 연산
# 4.1 벡터와 숫자값 연산

d <- c(1,4,3,7,8)
2*d
d-5
3*d+4

#4.2 벡터와 벡터 간의 연산

x <- c(1,2,3)
y <- c(4,5,6)
x+y
x*y
z <- x+y
z

# 4.3벡터에 적용 가능한 함수
sum()
mean()
median()
max()
min()
var()
sd()
sort()
range()
length()

d <- c(1,2,3,4,5,6,7,8,9,10)
sum(d)
sum(2*d)
length(d)
mean(d[1:5])
max(d)
min(d)
sort(d)
sort(d, decreasing = FALSE)
sort(d, decreasing = TRUE)

v1 <- median(d)
v1
v2 <- sum(d)/length(d)
v2

d <- c(1:10)
sort(x = d, decreasing = TRUE)
sort(x = d, TRUE)
sort(d, TRUE)
sort(TRUE, d)

sort(d)


# 4.4벡터에 논리연산자 적용
d <- c(1,2,3,4,5,6,7,8,9)
d>=5
d[d>5]
sum(d>5)
sum(d[d>5])
d==5

condi <- d>5 & d<8
condi
d[condi]

x <- c(1,2,3)
y <- c(4,5)
c(x,y)
z <- c(x,y)
z

# 5.리스트와 팩터

# 5.1리스트
ds <- c(90,85,70,84)
my.info <- list(name='Tom', age=60, status=TRUE, score=ds)
my.info
my.info[[1]]
my.info$name
my.info[[4]]


# 5.2 팩터
bt <- c('A','B','B','O','AB','A')
bt
bt.new <- factor(bt)
bt.new
bt[5]
bt.new[5]
levels(bt.new)
as.integer(bt.new)
class(bt)
class(bt.new)
bt.new[7] <- 'B'
bt.new
bt.new[8] <- 'C'
bt.new
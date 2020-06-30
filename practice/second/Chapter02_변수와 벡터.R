2+3
(3+6)*8
2^3
7+4
log(10)+5
sqrt(25)
max(5,3,2)
a <- 10
b <- 20
c <- a+b
print(c)

a <- 125
a
print(a)

a <- 10
b <- 20
a+b
a <- 'A'
a+b

x <- c(1,2,3)
y <- c("a","b","c")
z <- c(TRUE,TRUE,FALSE,TRUE)
x
y
z
w <- c(1,2,3,"a","b","c")
w

v1 <- 50:90
v1
v2 <- c(1,2,5, 50:90)
v2

v3 <- seq(1,101,3)
v3
v4 <- seq(0.1,1.0,0.1)
v4

v5 <- rep(1, times=5)
v5
v6 <- rep(1:5, times=3)
v6
v7 <- rep(c(1,5,9), times=3)
v7

score <- c(90,85,70)
score

names(score)
names(score) <- c("John","Tom","Jane")
names(score)
score

d <- c(1,4,3,7,8)
d[1]
d[2]
d[3]
d[4]
d[5]

d <- c(1,4,3,7,8)
d[c(1,3,5)]
d[1:3]
d[seq(1,5,2)]
d[-2]
d[-c(3:5)]


GNP <- c(2090,2450,960)
GNP
names(GNP) <- c('korea','japan','nepal')
GNP
GNP[1]
GNP['korea']
GNP[c('korea','nepal')]

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
sort(d, decreasing = F)
sort(d, decreasing = T)
sort(x=d, decreasing = T)
sort(x=d, T)
sort(d, T)
sort(T, d)

sort(d)


d <- c(1,2,3,4,5,6,7,8,9)
d>=5
d[d>5]
sum(d>5)
sum(d[d>5])
d==5

condi <- d>5 & d<8
d[condi]

ds <- c(90,85,70,84)
my.info <- list(name='Tom', age=60, status=T, score=ds)
my.info[[1]]
my.info$name
my.info[[4]]

bt <- c("A","B","B","O","AB","A")
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


#연습문제

# 1.
25+99
456-123
2*(3+4)
(3+5*6)/7
(7-4)*3
210+35
1256%%7
184%%5
1976/24
16*25+186*5-67*22

# 2.
a <- 4
b <- 5
c <- a+b
c

# 3.
pi <- 3.14

pi*10^2
pi*12^2
pi*15^2

# 4.
x <- 6
y=2*x^2+5*x+10
y

x <- 8
y=2*x^2+5*x+10
y

x <- 10
y=2*x^2+5*x+10
y

# 5.
val.a <- 10
val.b <- 11
sum.ab <- val.a+val.b
sum.ab

# 6.
vc.1 <- c(95,86,47,55,68)
vc.1

# 7.
vc.2 <- seq(100,200,2)
vc.2

# 8.
vc.3 <- rep(TRUE, 20)
vc.3


# 9.
d <- 100:200
# (1)
d
# (2)
d[10]
# (3)
length(d[(length(d)-9):length(d)])
# (4)
d[d%%2==1]
# (5)
d[d%%3==0]
# (6)
d.20 <- d[1:20]
d.20
# (7)
d.20[-5]
# (8)
d.20[-5][-7][-9]
d.20[-c(5,7,9)]

# 10.
absent <- c(10,8,14,15,9,10,15,12,9,7,8,7)
names(absent) <- c('JAN','FEB','MAR','APR','MAY','JUN','JUL','AUG','SEP','OCT','NOV','DEC')
# (1)
absent
# (2)
absent['MAY']
# (3)
absent[c('JUL','SEP')]
# (4)
sum(absent[1:6])
# (5)
mean(absent[7:12])



# 11.
d1 <- 1:50
d2 <- 51:100

# (1)
d1
d2
# (2)
length(d2)
# (3)
d1+d2
d2-d2
d1*d2
d2/d1
# (4)
sum(d1)
sum(d2)
# (5)
sum(d1+d2)
# (6)
max(d2)
min(d2)
# (7)
mean(d2)
mean(d1)
mean(d2)-mean(d1)
abs(mean(d2)-mean(d1))
# (8)
sort(d1, decreasing = T)
# (9)
d1 <- d1[1:10]
d2 <- d2[1:10]
d3 <- c(d1,d2)
d3

d3 <- c(d1[1:10], d2[1:10])
d3
d3 <- c(sort(d1)[1:10], sort(d2)[1:10])
d3

# 12.
v1 <- 51:90
# (1)
v1 <- 51:90
v1[v1 < 60]
# (2)
v1 <- 51:90
length(v1[v1 < 70])
# (3)
v1 <- 51:90
sum(v1[v1 > 65])
# (4)
v1 <- 51:90
v1[v1 > 60 & v1 < 73]
# (5)
v1 <- 51:90
v1[v1 < 65 & v1 > 80]
# (6)
v1 <- 51:90
v1[v1%%7==3]
# (7)
v1 <- 51:90
v1[v1%%7==0]
v1
# (8)
v1 <- 51:90
sum(v1[v1%%2==0])
# (9)
v1 <- 51:90
v1[v1%%2==1 | v1 > 80]
# (10)
v1 <- 51:90
v1[v1%%3==0 & v1%%5==0]
# (11)
v1 <- 51:90
v1[v1%%2==0]*2
# (12) 
v1 <- 51:90
v1[!v1%%7==0]

v1 <- 51:90
v1 <- v1[v1%%7!=0]
v1
# page87 연습문제

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

#2.
a <- 4
b <- 5
c <- a+b
c

#3.
pi <- 3.14

pi*10^2
pi*12^2
pi*15^2


#4.
x <- c(6,8,10)
y <- 2*x^2+5*x+10
y

# 5.
val.a <- 10
val.b <- 10
sum.ab <- val.a+val.b
sum.ab

#6.
vc.1 <- c(95,86,47,55,68)
vc.1

#7.
vc.2 <- seq(100,200,2)
vc.2

#8.
vc.3 <- rep(TRUE, times=20)
vc.3

#9.
d <- c(100:200)

d

d[10]

d[c(92:101)]
length(d[c(92:101)])
d[-c(1:91)]
length(d[-c(1:91)])

d%%2==1
d[d%%2==1]

d%%3==0
d[d%%3==0]

d.20 <- d[c(1:20)]
d[-c(21:101)]
d.20

d.20[-5]

d.20[-c(5,7,9)]

#10.


absent <- c(10,8,14,15,9,10,15,12,9,7,8,7)
names(absent)
names(absent) <- c('JAN','FEB','MAR','APR','MAY','JUN','JUL','AUG','SEP','OCT','NOV','DEC')
names(absent)
absent

absent['MAY']

absent[c('JUL','SEP')]

sum(absent[c(1:6)])

mean(absent[c(7:12)])

#11.
d1 <- 1:50
d2 <- 51:100
d1
d2

length(d2)

d1+d2
d2-d1
d1*d2
d2/d1

sum(d1)
sum(d2)

sum(d1)+sum(d2)

max(d2)
min(d2)

mean(d2)
mean(d1)
mean(d2)-mean(d1)

sort(d1, decreasing = TRUE)

sort(d2, decreasing = TRUE)

vec1 <- d1[c(1:10)]
vec2 <- d2[c(1:10)]
d3 <- c(vec1,vec2)
d3
length(d3)

#12.

v1 <- 51:90
v1

v1[v1<60]

v1 <- 51:90
length(v1[v1<70]) 

v1 <- 51:90
sum(v1[v1>65])

v1 <- 51:90
v1[v1>60 & v1<73]

v1 <- 51:90
v1[v1<65 | v1>80]

v1 <- 51:90
v1[v1%%7==3]

v1 <- 51:90
v1[v1%%7==0]=0
v1

v1 <- 51:90
sum(v1[v1%%2==0])

v1 <- 51:90
v1[v1%%2==1 | v1>80]

v1 <- 51:90
v1[v1%%3==0 & v1%%5==0]

v1 <- 51:90
v1.1 <- v1[v1%%2==0]*2
v1.1

v1 <- 51:90
v1[!v1%%7==0]
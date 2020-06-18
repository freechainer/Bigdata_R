# 페이지87 / 연습문제

# 1.
25+99
456-123
2*(3+4)
(3+5*6)/7
(7-4)*3
210+35
1256 %% 7
184 %% 5
1976/24
16*25+186*5-67*22

# 2.
a <- 4
b <- 5
c <- a+b
c

# 3.

pi <- 3.14

pi * 10^2
pi * 12^2
pi * 15^2

# 4.
x=6
y <- 2*x^2+5*x+10
y
x=8
y <- 2*x^2+5*x+10
y
x=10
y <- 2*x^2+5*x+10
y

for(x in c(6,8,10)){
  print(2*x^2+5*x+10)
}

# 5.

val.a <- 10
val.b <- 10
sum.ab <- val.a + val.b
sum.ab

# 6. 95,86,47,55,68
vc.1 <- c(95,86,47,55,68)
vc.1


# 7. 

vc.2 <- seq(100,200,2)
vc.2

# 8.

vc.3 <- rep(TRUE, times=20)
length(vc.3)

# 9.

d <- c(100:200)
d

d[10]

length(d)-10 
d[-1:-91]

d[d %% 2 == 1]

d[d %% 3 == 0]

d.20 <- d[1:20]
d.20

d.20[5]
d.20[-5]

d.20[c(-5,-7,-9)]
d.20[-5][-7][-9]

absent <- c(10,8,14,15,9,10,15,12,9,7,8,7)
names(absent) <- c('JAN', 'FEB', 'MAR', 'APR', 'MAY', 'JUN', 'JUL', 'AUG', 'SEP', 'OCT', 'NOV', 'DEC')
absent
absent[c('MAY')]
absent[c('JUL','SEP')]
sum(absent[c(1:6)])
mean(absent[c(7:12)])

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

sort.default(d1, decreasing = TRUE)
d1.10 <- sort.default(d1, decreasing = TRUE)[1:10]
d2.10 <- sort.default(d2, decreasing = TRUE)[1:10]
d1.10
d2.10
d1.10 <- c(d1.10,d2.10)
d1.10
cat(d1.10, d2.10)

v1 <- 51:90
v1
v1[v1<60]
# s1 = c(1,2,3,4) 
# s1[c(T,F,T,F)]
v1 <- 51:90
length(v1[v1<70])
v1 <- 51:90
sum(v1[v1>65])
v1 <- 51:90
v1>60 & v1<73
v1[v1>60 & v1<73]
v1 <- 51:90
v1<65&v1>80
v1[v1<65&v1>80]

v1 <- 51:90
v1%%7 == 3
v1[v1%%7 == 3]

v1 <- 51:90
v1%%7==0
v1[v1%%7==0] <- c(0)
v1

v1 <- 51:90
v1%%2 == 0
v1[v1%%2 == 0]
sum(v1[v1%%2 == 0])

v1 <- 51:90
v1%%2==1 & v1>80
v1[v1%%2==1 & v1>80]

v1 <- 51:90
v1%%3==0 & v1%%5==0
v1[v1%%3==0 & v1%%5==0]

v1 <- 51:90
v1%%2==0
v1[v1%%2==0]*2

v1 <- 51:90
v1[!v1%%7==0]

mtcars
str(mtcars)
class(mtcars)
dim(mtcars)
class(str(mtcars))

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

help("mtcars")
max(mtcars['mpg'])
subset(mtcars, mpg==max(mtcars['mpg']))
rownames(subset(mtcars, mpg==max(mtcars['mpg'])))


a <- subset(mtcars, gear==4)
subset(a, mpg == min(mpg))

s.df = mtcars[mtcars[,"gear"] == 4, ]
s.df[s.df[,"mpg"] == min(s.df[,"mpg"]),]

mtcars
s.df = mtcars[mtcars[,"gear"]==4, ]
s.df[s.df[,"mpg"] == min(s.df[,"mpg"]),]


mtcars['Honda Civic',c('mpg','gear')]
PF <- mtcars['Pontiac Firebird',c('mpg')]
PF
subset(mtcars, mpg > 19.2)
rownames(subset(mtcars, mpg > PF))

mtcars[,'mpg']
mean(mtcars[,'mpg'])

mtcars['gear']
class(mtcars['gear'])
factor(mtcars['gear'])
unique(mtcars['gear'])[,1]


airquality
str(airquality)
head(airquality)
TempMax=max(airquality['Temp'])
subset(airquality, Temp == TempMax)[c('Month','Day')]
max(subset(airquality, Month == 6)['Wind'])

Temp.7 <- subset(airquality, Month == 7)['Temp']
sum(Temp.7)/nrow(Temp.7)

subset(airquality, Month == 5)['Ozone']

is.na(subset(airquality, Month == 5)['Ozone'])
sum(na.omit(subset(airquality, Month == 5)['Ozone']))
nrow(na.omit(subset(airquality, Month == 5)['Ozone']))
sum(na.omit(subset(airquality, Month == 5)['Ozone']))/nrow(na.omit(subset(airquality, Month == 5)['Ozone']))


nrow(subset(airquality, Ozone > 100))


swiss
str(swiss)
max(swiss['Agriculture'])
rownames(subset(swiss, Agriculture==max(swiss['Agriculture'])))

Ca80 <- subset(swiss, Catholic >= 80)
Ca80['Agriculture']


subset(swiss, Examination<20 & Agriculture>50)
subset(swiss, Examination<20 & Agriculture>50)[c('Agriculture','Examination')]



st <- data.frame(state.x77)
class(st)

subset(st, Income >= 5000)[c('Income','Population','Area')]
rich_state<- subset(st, Income >= 5000)[c('Income','Population','Area')]
rich_state
setwd('/Users/heoinhaeng/Desktop/coding/r/bigdata_r/data')
write.csv(rich_state, "rich_state.csv", row.names = F)

setwd('/Users/heoinhaeng/Desktop/coding/r/bigdata_r/data')
read.csv('rich_state.csv', header=T)
ds <- read.csv('rich_state.csv', header=T)
ds
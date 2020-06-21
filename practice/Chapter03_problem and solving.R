# 연습문제

#. 1번
m <- c(10, 40, 60, 20)
f <- c(21, 60, 70, 30)
score <- cbind(m,f)
score
colnames(score) <- c('male', 'female')
score
score[2,]
score[,'female']
score[3,2]

#. 2번
st <- data.frame(state.x77)

st

colnames(st)
rownames(st)
dim(st)
str(st)
rowSums(st)
rowMeans(st)
colSums(st)
colMeans(st)
st['Florida',]
st[,'Income']
st['Texas','Area']
st['Ohio',c('Population','Income')]

st[,'Population']>=5000                        #bool값을 출력하기 
subset(st, Population>=5000)

income.4500 <- subset(st, Income>=4500)
income.4500[,c('Population','Income','Area')]

nrow(income.4500)

subset(st, Area>=100000 & Frost>=120)

subset(st, Population<2000 & Murder<12)

dt.1 <- mean(subset(st, Illiteracy >= 2.0)[,'Income'])
dt.1

dt.2 <- mean(subset(st, Illiteracy< 2.0)[,'Income'])
dt.2
dt.2-dt.1

max(st[,'Life.Exp'])
rownames(subset(st, Life.Exp==73.6))

st['Pennsylvania','Income']
rownames(subset(st, Income>4449)) 


#.3번
class(mtcars)
dim(mtcars)
str(mtcars)
help("mtcars")

max.mpg <- max(mtcars$mpg)
max.mpg
subset(mtcars, mpg==max.mpg)
rownames(subset(mtcars, mpg==max.mpg))

max(mtcars[,'mpg'])
mtcars[,'mpg']==33.9              # bool값을 툴력하는 방법

max.mpg <- max(mtcars[,'mpg'])
max.mpg
rownames(subset(mtcars, mpg==max.mpg))

gear.4 <- subset(mtcars, gear==4)
gear.4
gear.4.min.mpg <- min(gear.4[,'mpg'])
gear.4.min.mpg
subset(gear.4, mpg==gear.4.min.mpg)
rownames(subset(gear.4, mpg==gear.4.min.mpg))

mtcars['Honda Civic',c('mpg','gear')]

HC.mpg <- mtcars['Pontiac Firebird','mpg']
HC.mpg
subset(mtcars, mpg>HC.mpg)
rownames(subset(mtcars, mpg>HC.mpg))

mean(mtcars[,'mpg'])
colMeans(mtcars)

unique(mtcars$gear)

#. 4번

str(airquality)

head(airquality)

max.Temp <- max(airquality[,'Temp'])
max.Temp
air.max.Temp <- subset(airquality, Temp==max.Temp)
air.max.Temp[,c('Month','Day')]

month.6 <- subset(airquality, Month==6)
max(month.6[,'Wind'])

month.7 <- subset(airquality, Month==7)
month.7[,'Temp']
mean(month.7[,'Temp'])

month.5 <- subset(airquality, Month==5)
month.5[,'Ozone']
mean(month.5[,'Ozone'], na.rm = TRUE)  #결측값을 통계 분석 시 제외(미포함): na.rm = TRUE
                                       #결측값이 들어있는 행 전체를 데이터 셋에서 제거: na.omit()


ozone.100 <- subset(airquality, Ozone>100)
ozone.100
nrow(ozone.100)
sum(airquality[,"Ozone"] > 100, na.rm = T)

#.5번

swiss
str(swiss)
agr.max <- max(swiss[,"Agriculture"])
agr.max
subset(swiss, Agriculture==agr.max)
rownames(subset(swiss, Agriculture==agr.max))
rownames(swiss[swiss$Agriculture == max(swiss$Agriculture),]) 


swiss[order(swiss[,"Agriculture"], decreasing = TRUE),]


cat.80 <- subset(swiss, Catholic>=80)['Agriculture']
cat.80['Agriculture']


subset(swiss, Examination<20 & Agriculture<50)[c('Examination','Agriculture')]

condi <- swiss[,'Examination'] < 20 & swiss[,'Agriculture'] < 50
swiss[condi, c('Examination','Agriculture')]

#.6번

condi <- state.x77[,'Income']>=5000
condi 
state.x77[condi, c('Income','Population','Area')]
setwd("/Users/heoinhaeng/Desktop/coding/r/bigdata_r/data")
rich.state <- state.x77[condi, c('Income','Population','Area')]
write.csv(rich.state, 'rich_state.csv', row.names = T)

ds <- read.csv('rich_state.csv')
ds

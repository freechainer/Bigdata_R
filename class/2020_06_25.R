z <- c(1,2,3,NA,5,NA,8)
sum(z)
is.na(z)
sum(is.na(z))
sum(z, na.rm = T)


z1 <- c(1,2,3,NA,5,NA,8)
z2 <- c(5,8,1,NA,3,NA,7)
z1[is.na(z1)] <- 0
z1

z3 <- as.vector(na.omit(z2))
z3


x <- iris
x[1,2] <- NA; x[1,3] <- NA
x[2,3] <- NA; x[3,4] <- NA
head(x)
ncol(x)


for(i in 1:ncol(x)){
  this.na <- is.na(x[,i])
  cat(colnames(x)[i], "\t", sum(this.na), '\n')
} 

col_na <- function(y){
  return(sum(is.na(y)))
}

na_count <- apply(x, 2, FUN=col_na)
na_count

rowSums(is.na(x))
sum(rowSums(is.na(x)) > 0)
sum(is.na(x))

head(x)
complete.cases(x)
head(x[complete.cases(x),])
head(x[!complete.cases(x),])             

st <- data.frame(state.x77)
st
class(st)
head(st)
boxplot(st$Income)
boxplot.stats(st$Income)$out


out.val <- boxplot.stats(st$Income)$out
out.val
st$Income[st$Income %in% out.val] <- NA
st$Income
head(st)
newdata <- st[complete.cases(st),]
head(newdata)
boxplot.stats(newdata$Income)$out
boxplot(newdata$Income)

st <- data.frame(state.x77)
head(st)
boxplot(st$Income)

out.val <- boxplot.stats(st$Income)$out
out.val

head(st$Income)

st$Income[st$Income %in% out.val] <- NA
head(st)
newdata <- st[complete.cases(st),]
newdata

boxplot.stats(newdata$Income)$out
boxplot(newdata$Income)

v1 <- c(1, 2, 8, 4 ,7, 3)
v1
order(v1, decreasing = T)


head(iris)
iris[order(iris$Sepal.Length),]
iris[order(iris$Sepal.Length, decreasing = T),]
iris.new <- iris[order(iris$Sepal.Length),]
head(iris.new)
iris[order(iris$Species, decreasing = T, iris$Petal.Length),]



sp <- split(iris, iris$Species)
sp
summary(sp)
sp$versicolor


subset(iris, Species=='setosa')
subset(iris, Sepal.Length > 7.5)
subset(iris, Sepal.Length > 5.1 & Sepal.Width > 3.9)
subset(iris, Sepal.Length > 7.6, select = c(Petal.Length,Petal.Width))


x <- 1:100
y <- sample(x, size=10, replace = F)
y

idx <- sample(1:nrow(iris), size = 50,
              replace = F)
idx
iris.50 <- iris[idx,]
iris.50
dim(iris.50)
head(iris.50)



idx <- sample(1:nrow(iris), size=50)
idx
iris.50 <- iris[idx,]
iris.50
dim(iris.50)
head(iris.50)


sample(1:20, size=5)
sample(1:20, size=5)
sample(1:20, size=5)

set.seed(10000)
sample(1:20, size=5)
set.seed(10000)
sample(1:20, size=5)
set.seed(100)
sample(1:20, size=5)


combn(1:5, 3)

x <- c("red","green","blue","black","white")
com <- combn(x, 2)
com 

for(i in 1:ncol(com)){
  cat(com[,i], '\n')
}


agg <- aggregate(iris[,-5], by=list(iris$Species),
                 FUN = mean)
agg

subset(iris, iris$Species == "setosa")

agg <- aggregate(iris[,-5], by=list(iris$Species),
                 FUN = min)


agg <- aggregate(iris[,-5], by=list(iris$Species),
                 FUN=sd)
agg


head(mtcars)
agg <- aggregate(mtcars, by=list(cyl=mtcars$cyl,
                                 vs=mtcars$vs),FUN = max)
agg


unique(mtcars$cyl)
unique(mtcars$vs)

x <- data.frame(name=c('a','b','c'), math=c(90,80,40))
y <- data.frame(sname=c('a','b','d'), korean=c(75,60,90))
x
y

merge(x, y, by=c('name'))
merge(x, y, all.x=T)      
merge(x, y, all.y=T)
merge(x, y, all=T)


merge(x, y, by.x = c('name'), by.y = c('sname'))

install.packages("treemap")
library(treemap)
data(GNI2014)
head(GNI2014)
treemap(GNI2014,
        index = c('continent','iso3'),
        vSize='population',
        vColor = 'GNI',
        type = 'value',
        bg.labels = 'yellow',
        title = "World's GNI")


library(treemap)
st <- data.frame(state.x77)
st <- data.frame(st, stname=rownames(st))

treemap(st,
        index = c('stname'),
        vSize = 'Area',
        vColor = 'Income',
        type = 'value',
        title="USA states area and income")


st <- data.frame(state.x77)
symbols(st$Illiteracy, st$Murder, 
        circles = st$Population, 
        inches = 0.3,
        fg="white",
        bg="lightgray",
        lwd=1.5,
        xlab = 'rate of Illiteracy',
        ylab = 'Murder rate',
        main = 'Illiteracy and Crime')
text(st$Illiteracy, st$Murder,
     rownames(st),
     cex=0.6,
     col = 'brown')

UCBAdmissions
apply(UCBAdmissions, c(2,1), sum)
mosaicplot(apply(UCBAdmissions, c(2,1), sum),
           main = 'Students admissions at UC Berkely',
           color = c('red','gray')) 

UCBAdmissions
apply(UCBAdmissions, c(1,2), sum)
mosaicplot(apply(UCBAdmissions, c(1,2), sum),
           main = 'Students admissions at UC Berkely',
           color = c('red','gray'))  


head(mtcars)
mosaicplot(~gear+vs, data = mtcars, color=TRUE,
           main = 'Gear and Vs')


unique(mtcars$gear) 
unique(mtcars$vs)
a <- subset(mtcars, vs==0 & gear==3)
head(a)
nrow(a)

a <- subset(mtcars, vs==1 & gear==3)
nrow(a)

mosaicplot(~gear+vs, data = mtcars, color=c('green','blue'),
           main = 'Gear and Vs')


library(ggplot2)

month <- c(1,2,3,4,5,6)
rain <- c(55,50,45,50,60,70)
df <- data.frame(month, rain)
df

ggplot(df, aes(x=month, y=rain))+
  geom_bar(stat='identity',
           width = 0.7,
           fill='steelblue')+
  ggtitle("Month Rain")+
  theme(plot.title = element_text(size = 25, face = 'bold', colour = 'steelblue'))+
    labs(x='Month', y='Rain')+
    coord_flip()

library(ggplot2)
ggplot(iris, aes(x=Petal.Length))+
  geom_histogram(binwidth = 0.5)

library(ggplot2)
ggplot(iris, aes(x=Sepal.Width, fill=Species, color=Species))+
      geom_histogram(binwidth = 0.5, position = 'dodge')+
      theme(legend.position = 'top')


library(ggplot2)
ggplot(data=iris, aes(x=Petal.Length, y=Petal.Width,
                      color=Species))+
  geom_point(size=3)+
  ggtitle("flower's Length and Width")+
  theme(plot.title = element_text(size = 25, face = 'bold', colour = 'steelblue'))
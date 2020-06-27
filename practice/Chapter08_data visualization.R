library(treemap)
data("GNI2014")
head(GNI2014)
treemap(GNI2014,
        index = c("continent","iso3"),
        vSize = "population",
        vColor = "GNI",
        type = "value",
        bg.labels = "yellow",
        title = "World's GNI")


library(treemap)
st <- data.frame(state.x77)
st
st <- data.frame(st, stname=rownames(st))
st

treemap(st,
        index=c("stname"),
        vSize = "Area",
        vColor = "Income",
        type = "value",
        title = "USA states area and income")


st <- data.frame(state.x77)
symbols(st$Illiteracy, st$Murder,
        circles = st$Population,
        fg='white',
        bg='lightgray',
        lwd=1.5,
        xlab = 'rate of Illiteracy',
        ylab = 'crime rate',
        main = 'Illiteracy')
text(st$Illiteracy, st$Murder,
     rownames(st),
     cex=0.6,
     col='brown')

head(mtcars)
mosaicplot(~gear+vs, data=mtcars, color=c('green','blue'),
           main = "Gear and Vs")

tbl <- table(mtcars$gear, mtcars$vs)
tbl

mosaicplot(tbl, color = T, main='Gear and Vs')

library(ggplot2)

month <- c(1,2,3,4,5,6)
rain <- c(55,50,45,50,60,70)
df <- data.frame(month, rain)
df

ggplot(df, aes(x=month, y=rain))+
  geom_bar(stat = 'identity',
           width = 0.7,
           fill="steelblue")


ggplot(df, aes(x=month, y=rain))+
  geom_bar(stat = 'identity',
           width = 0.7,
           fill='steelblue')+
  ggtitle("월별 강수량")+
  theme(plot.title = element_text(size = 25, face = 'bold', colour = 'steelblue'))+
  labs(x="월", y="강수량")+
  coord_flip()

library(ggplot2)

ggplot(iris, aes(x = Petal.Length))+
  geom_histogram(binwidth = 0.5)

library(ggplot2)

ggplot(iris, aes(x=Sepal.Width, fill=Species, color=Species))+
  geom_histogram(binwidth = 0.5, position = 'dodge')+
  theme(legend.position = 'top')

library(ggplot2)

ggplot(data = iris, aes(x=Petal.Length, y=Petal.Width))+
  geom_point()

library(ggplot2)

ggplot(data = iris, aes(x=Petal.Length, y=Petal.Width,
                        color=Species, shape=Species))+
  geom_point(size=3)+
  ggtitle("꽃잎의 길이와 폭")
  theme(plot.title = element_text(size = 25, face = 'bold', colour = 'steelblue'))
  
  
library(ggplot2)
  
ggplot(data = iris, aes(y=Petal.Length))+
  geom_boxplot(fill='yellow')


library(ggplot2)
ggplot(data = iris, aes(x=Petal.Length, fill=Species))+
  geom_boxplot()

library(ggplot2)
year <- 1937:1960
cnt <- as.vector(airmiles)
df <- data.frame(year, cnt)
head(df)

ggplot(data = df, aes(x=year, y=cnt))+
  geom_line(col='red')



library(Rtsne)
library(ggplot2)

ds <- iris[,-5]
ds

dup <- which(duplicated(ds))
dup
ds <- ds[-dup,]
ds.y <- iris$Species[-dup]
ds.y

tsne <- Rtsne(ds, dims=2, perplexity=10)
tsne

df.tsne <- data.frame(tsne$Y)
head(df.tsne)
ggplot(df.tsne, aes(x=X1, y=X2, color=ds.y))+
  geom_point(size=2)



install.packages(c('rgl','car'))
library('car')
library('rgl')
library('mgcv')


tsne <- Rtsne(ds, dims=3, perplexity=10)
tsne

df.tsne <- data.frame(tsne$Y)
head(df.tsne)

head(df.tsne)
scatter3d(x=df.tsne$X1,y=df.tsne$X2, z=df.tsne$X3) 

points <- as.integer(ds.y)
points
color <- c('red','green','blue')
scatter3d(x=df.tsne$X1, y=df.tsne$X2, z=df.tsne$X3,
          point.col = color[points],
          surface = FALSE)



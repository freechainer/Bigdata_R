library(ggplot2)

ggplot(data = iris, aes(y=Petal.Length))+
  geom_boxplot(fill='yellow')


library(ggplot2)

ggplot(data = iris, aes(y=Petal.Length, fill=Species))+
  geom_boxplot()





library(ggplot2)
year <- 1937:1960
cnt <- as.vector(airmiles)
df <- data.frame(year, cnt)
head(df)

ggplot(data=df, aes(x=year, y=cnt))+
  geom_line(col='red')



install.packages('Rtsne')
library('Rtsne')
library(ggplot2)

ds <- iris[,-5]
ds

dup <- which(duplicated(ds))
dup

ds <- ds[-dup,]
ds.y <- iris$Species[-dup]

tsne <- Rtsne(ds, dim=2, perplexity=10)
tsne

df.tsne <- data.frame(tsne$Y)
head(df.tsne)

ggplot(df.tsne, aes(x=X1, y=X2, color=ds.y))+
  geom_point(size=2)



install.packages("carData")
install.packages(c("rgl","car"))
library('car')
library('rgl')
library('mgcv')

tsne <- Rtsne(ds, dims=3, perplexity=10)
df.tsne <- data.frame(tsne$Y)
head(df.tsne)

scatter3d(x=df.tsne$X1, y=df.tsne$X2, z=df.tsne$X3)

points <- as.integer(ds.y)
color <- c('red','green','blue')
scatter3d(x=df.tsne$X1, y=df.tsne$X2, z=df.tsne$X3,
          point.col = color[points],
          surface=FALSE)



install.packages('ggmap')
library(ggplot2)
library(ggmap)

register_google(key = '')

gc <- geocode(enc2utf8("유성구"))
gc
cen <- as.numeric(gc)
cen
map <- get_googlemap(center = cen, maptype = 'hybrid')
ggmap(map)

gc <- geocode(enc2utf8("설악산"))
cen <- as.numeric(gc)
map <- get_googlemap(center = cen, 
                     zoom = 9,
                     size = c(640,640),
                     maptype = "roadmap")
ggmap(map)



library(ggmap)
register_google(key = '')

cen <- c(-118.233248, 34.085015)
map <- get_googlemap(center=cen)
ggmap(map)


gc <- geocode(enc2utf8("용인"))
cen <- as.numeric(gc)
map <- get_googlemap(center=cen,
                     maptype = "roadmap",
                     markers = gc)
ggmap(map)

names <- c("용두암","성산일출봉","정방폭포",
           "중문관광단지","한라산1100고지","차귀도")
addr <- c("제주시 용두암길 15",
          "서귀포시 성산읍 성산리",
          "서귀포시 동홍동 299-3",
          "서귀포시 중문동 2624-1",
          "서귀포시 색달동 산1-2",
          "제주시 한강면 고산리 125")
gc <- geocode(enc2utf8(addr))
gc

df <- data.frame(name=names,
                 lon=gc$lon,
                 lat=gc$lat)
df

cen <- c(mean(df$lon), mean(df$lat))
map <- get_googlemap(center = cen,
                     maptype = "roadmap",
                     zoom = 10,
                     size = c(640,640),
                     markers=gc)
ggmap(map)


gmap <- ggmap(map)
gmap+geom_text(data=df,
               aes(x=lon, y=lat),
               size=5,
               label=df$name)


library(ggmap)
library(ggplot2)


sp <- sample(1:nrow(wind),50)
df <- wind[sp,]
head(df)

cen <- c(mean(df$lon), mean(df$lat))
gc <- data.frame(lon=df$lon, lat=df$lat)
head(gc)

map <- get_googlemap(center = cen,
                     maptype = 'roadmap',
                     zoom = 6,
                     markers = gc)
ggmap(map)

map <- get_googlemap(center = cen,
                     maptype = "roadmap",
                     zoom = 6)
gmap <- ggmap(map)
gmap+geom_point(data=df,
                aes(x=lon, y=lat, size=spd),
                alpha=0.5,
                col="blue")+
  scale_size_continuous(range = c(1, 14))


ggplot(iris, aes(Sepal.Length, Sepal.Width)) + 
  geom_point(aes(colour=Species)) + ggtitle("TITLE")


head(cars)
plot(dist~speed, data=cars)

model <- lm(dist~speed, data=cars)
model

abline(model)
coef(model)[1]
coef(model)[2]


b <- coef(modle)[1]
W <- coef(model)[2]

speed <- 30
dist <- W*speed+b
dist

speed <- 35
dist <- W*speed+b
dist

speed <- 35
dist <- W*speed+b
dist

speed <- 40
dist <- W*speed+b
dist

speed <- cars[,1]
pred <- W * speed + b
pred

compare <- data.frame(pred, cars[,2], pred-cars[,2])
colnames(compare) <- c("예상","실제","오차")
head(compare)


library(car)
head(Prestige)
newdata <- Prestige[,c(1:4)]
plot(newdata, pch=16, col='blue',
     main="Matrix Scatterplot")
mod1 <- lm(income~education+prestige+
             women, data=newdata)
summary(mod1)

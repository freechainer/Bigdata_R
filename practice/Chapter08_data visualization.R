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

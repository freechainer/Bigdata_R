library(ggmap)
register_google(key="")

gc <- geocode(enc2utf8("유성구"))
gc

cen <- as.numeric(gc)
cen

map <- get_googlemap(center = cen)
ggmap(map)

gc <- geocode(enc2utf8("한라산"))
cen <- as.numeric(gc)
map <- get_googlemap(center=cen, 
                     zoom = 9,
                     size = c(640,640),
                     maptype = "roadmap")
ggmap(map)


cen <- c(-118.233248, 34.085015)
map <- get_googlemap(center = cen)
ggmap(map)


gc <- geocode(enc2utf8("용인"))
cen <- as.numeric(gc)
map <- get_googlemap(center = cen,
                     maptype = "roadmap",
                     marker = gc)
ggmap(map)

names <- c("용두암","성산일출봉","정방폭포",
           "중문관광단지","한라산110고지","차귀도")
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
                     markers = gc)
ggmap(map)

gmap <- ggmap(map)
gmap+geom_text(data=df,
               aes(x=lon, y=lat),
               size=5,
               label=df$name)



sp <- sample(1:nrow(wind),50)
df <- wind[sp,]
head(df)

cen <- c(mean(df$lon), mean(df$lat))
gc <- data.frame(lon=df$lon, lat=df$lat)
head(gc)

map <- get_googlemap(center = cen,
                     maptype = "roadmap",
                     zoom = 6,
                     markers = gc)
ggmap(map)


map <- get_googlemap(center=cen,
                     maptype = "roadmap",
                     zoom=6)

gmap <- ggmap(map)
gmap+geom_point(data=df,
                aes(x=lon, y=lat, size=spd),
                alpha=0.5,
                col='blue')+
  scale_size_continuous(range=c(1,14))

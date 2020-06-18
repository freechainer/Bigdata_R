library(ggmap)
register_google(key='AIzaSyCK...E9urxjSpPOA')   # 구글키  등록

gc <- geocode(enc2utf8("종로구"))               # 지점의 경도 위도 
gc
cen <- as.numeric(gc)                           # 경도 위도를 숫자로 
cen
map <- get_googlemap(center=cen)                # 지도 생성
ggmap(map)                                      # 지도 화면에 보이기
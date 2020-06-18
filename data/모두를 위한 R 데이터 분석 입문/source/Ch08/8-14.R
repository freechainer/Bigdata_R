library(Rtsne)
library(ggplot2)

ds <- iris[,-5]               # 품종 정보 제외

## 중복 데이터 제거
dup = which(duplicated(ds))
dup                           # 143번째 행 중복
ds <- ds[-dup,]
ds.y <- iris$Species[-dup]    # 중복을 제외한 품종 정보

## t-SNE 실행
tsne <- Rtsne(ds,dims=2, perplexity=10)

## 축소결과 시각화 
df.tsne <- data.frame(tsne$Y)
head(df.tsne)
ggplot(df.tsne, aes(x=X1, y=X2, color=ds.y)) + 
  geom_point(size=2) 
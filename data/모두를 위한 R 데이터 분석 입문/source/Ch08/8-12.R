library(ggplot2)

ggplot(data=iris, aes(y=Petal.Length, fill=Species)) + 
  geom_boxplot() 
# 예측 대상 데이터 생성(데이터프레임)
unknown <- data.frame(rbind(c(5.1, 3.5, 1.4, 0.2)))
names(unknown) <- names(iris)[1:4]
unknown                            # 예측 대상 데이터

pred <- predict(mod.iris, unknown) # 품종 예측 
pred                               # 예측 결과 출력 
round(pred,0)                      # 예측 결과 출력(소수 첫째 자리에서 반올림) 

# 실제 품종명 알아보기
pred <- round(pred,0)
pred
levels(iris$Species)
levels(iris$Species)[pred]           
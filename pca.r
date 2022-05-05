# サンプルデータ
sample_data <- data.frame(
  X = c(2,4, 6, 5,7, 8,10),
  Y = c(6,8,10,11,9,12,14)
)

#グラフ描画
#plot(Y ~ X, data=sample_data)

# 主成分分析の実行
pcr_model_sample <- prcomp(sample_data, scale=T)

#結果
#Proportion of Variance 各軸の寄与率
#Cumulatice Proportion 寄与率の累積
print(summary(pcr_model_sample))

#主成分得点
# ＄xと付けることで、主成分得点を抽出できる
print(pcr_model_sample$x)

# 図示
#par(mfrow=c(1,2))
#plot(Y ~ X, data=sample_data, main="元のデータ")
#biplot(pcr_model_sample, main="主成分軸に合わせて回転された")
#par(mfrow=c(1,1))

#分散共分散行列
print(var(sample_data))

#相関行列
print(cor(sample_data))

#主成分の固有ベクトル
eigen_m <- eigen(var(sample_data))
print(eigen_m)

#主成分分析の結果
#$rotation 固有ベクトル
print(pcr_model_sample$rotation)
print(pcr_model_sample$x)

#固有ベクトルを用いて、主成分得点を計算する
#元のデータに固有ベクトルを掛け合わせる
#ベクトルの内積
sample_mat <- as.matrix(sample_data)
m1 <- as.matrix(eigen_m$vectors[,1])
x1 <- sample_mat%*%eigen_m$vectors[,1]
y1 <- (sample_mat%*%eigen_m$vectors[,2])
# 図示 
par(mfrow=c(1,2))
plot(
  x1,
  y1,
  main="固有ベクトルを使った回転"
)
plot(pcr_model_sample$x[,1], pcr_model_sample$x[,2], 
     main="主成分得点")
par(mfrow=c(1,1))
print(x1)
print(y1)
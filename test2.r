test <- "fdasjkl;"
str(test)
test <- c(1,2,3,4,5,5)
str(test)
print(nrow(test))
x <- matrix(1:6, nrow=2, ncol=3)       # 2 * 3 の行列を作る                                # dim 属性を調べる
print(x)
#行数
print(nrow(x))
#列数
print(ncol(x))

bunseki <- function(bunseki,d,method,k1,k2) { 
    h1 = hclust(d = d,method=method)
    cutree(h1,k=k1)
    result <-cutree(k = k2)
    answer <- bunseki10[,2]
    table <- table(answer,result)
    table
}

#dist() で距離行列　
# dx8 = dist(bunseki8)

#階層的クラスター分析　
#hclust 第一引数に距離構造、methodにクラスター分析方法 ここでは、群平均法
# h=hclust(d=dx8, method = "average")
# plot(h)
# cutree(h, k = 3)
#coutree 個体が属するクラスターの情報を返す関数

#k=3は、必要なグループを示す整数のスカラー、ベクトル
#h は、樹を切るべき高さを示すスカラー、ベクトル
#result <- cutree(h,k=3)

#table関数　クロス集計を行うための関数
#クロス集計を行うことができる
#table <- table(answer, result)
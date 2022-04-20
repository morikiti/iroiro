day <- 5432
print(day)

#文字列操作
a <- paste('This','is','Test',sep=' ')
print(a)

data <- c('test.txt','test.aa','test.xlsx','test.com')
print(data)
#部分文字列の一致
print(grep('.com',data))
print(data[grep('.com',data)])
print(grep('.cpp',data))

#完全文字列一致
print(match('test.txt',data))
print(data[match('test.txt',data)])
print(match('testfdsa.txt',data))

day <- 5432
print(day)

#文字列操作
a <- paste('This','is','Test',sep=' ')
print(a)

data <- c('test.txt','test.aa','test.xlsx','test.com','faf.cpp')
print(data)
#部分文字列の一致
print(grep('.com',data))
print(data[grep('.com',data)])
print(grep('testfdsa.txt',data))

flag <- grep('.com',data)
print(mode(flag))
print(is.numeric(flag))
#完全文字列一致
print(match('test.txt',data))
print(data[match('test.txt',data)])
print(match('testfdsa.txt',data))

#
if( !is.numeric(grep('.cpp',data))) { 
    print("一致する文字列が存在しません")
} else if(grep('.txt',data) != 'NA') { 
    print('テキストあるお')
} else { 
    print("else")
}

n <- 10
# 0からｎまで
for(i in 0:n ) {
    print(i)
}
x <- 0
#continue は、nextの代わり
while(x <= n) { 
    print(x)
    x <- x+1
    if(x == 5) { 
        print(paste(x,'になったぞ',' '))
        break
    }
}

#ベクトル
z <- c(2,4,56,7)
#配列のインデックスは1から始まる
print(z[1])
#配列の長さ
print(length(z))
#1から３番めまでの要素を出力
print(z[1:3])


#行列
z <- matrix(c(1,2,3,4,5,6,7))#行数　、列数　未指定
print(z)

z <- matrix(c(1,2,3,4,5,6),nrow=2,ncol=3)#行数2 列数 3
print(z)
print(z[1,2])

#与えられた配列を一行ずつセットする。
z <- matrix(c(1,2,3,4,5,6),nrow=2,ncol=3,byrow=T)
print(z)

z <- matrix(c(1,2,3,4,5,6),nrow=2)#行数のみ指定
print(z)

z <- matrix(c(1,2,3,4,5,6),nrow=3)
print(z)
print(z[,1])#１列だけ表示
print(z[1,])#一行だけ表示

#行列の結合
z <- matrix(c(1,2,3,4,5,6),nrow=2,ncol=3,byrow=T)
print(z)

#行の追加
z <- rbind(z,c(7,8,9))
print(z)

#列の追加
z <- cbind(z,c(4,5,6))
print(z)

#列の並び替え
z <- z[,c(1,3,2,4)]
print(z)

colnames(z) <- c('one','tow','threee','four')#列名の設定
print(z)
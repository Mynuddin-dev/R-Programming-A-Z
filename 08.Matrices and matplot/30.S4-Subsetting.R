x <- c("a","b","c","d","e")
x
x[c(1,5)]
x[c(1:5)]
x[1]

Games
Games[1:4 , 5:10]
Games[1:4,]
Games[c(1,10),]
Games[c(1:4),]
Games[,c(1:4)]
Games[,c(1,9)]
Games[,c("2005","2008")]

Games[1 , ]
Games[1 , 5]
is.matrix(Games[1 , ])
is.vector(Games[1 , ])

is.matrix(Games[,c(1:4)])

Games[1 , 1]
is.matrix(Games[1 , 1])
is.vector(Games[1 , 1])

is.matrix(Games[1 ,])

Games[1 ,, drop=F]
is.matrix(Games[1 ,, drop=F])     # drop dimension false
is.vector(Games[1 ,, drop=F])

Games[1 , 5 ,drop=F]
is.matrix(Games[1 , 5 ,drop=F])

Games[1 ,,drop=F]
Games[1 ,drop=F]

is.matrix(Games[1 ,drop=F])
is.vector(Games[1 , drop = F])




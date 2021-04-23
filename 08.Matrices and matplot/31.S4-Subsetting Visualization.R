
matplot(t(FieldGoals/Games), type = "b" ,pch = 15:18 , col = c(1:4,6))
legend("bottomleft",inset = 0.01 , legend = Players ,pch = 15:18 ,col = c(1:4,6),horiz = F)

matplot(t(MinutesPlayed), type = "b" ,pch = 15:18 ,col = c(1:4,6))
legend("bottomleft",inset = 0.01 , legend = Players ,pch = 15:18 ,col = c(1:4,6),horiz = F)



Data <- MinutesPlayed[1:3,]
matplot(t(Data), type = "b" ,pch = 15:18 ,col = c(1:4,6))
legend("bottomleft",inset = 0.01 , legend = Players[1:3] ,pch = 15:18 ,col = c(1:4,6),horiz = F)



Data <- MinutesPlayed[1,]
matplot(t(Data), type = "b" ,pch = 15:18 ,col = c(1:4,6))
legend("bottomleft",inset = 0.01 , legend = Players[1,] ,pch = 15:18 ,col = c(1:4,6),horiz = F)
#show error

Data <- MinutesPlayed[1 ,, drop=F ]
matplot(t(Data), type = "b" ,pch = 15:18 ,col = c(1:4,6))
legend("bottomleft",inset = 0.01 , legend = Players[1] ,pch = 15:18 , col = c(1:4,6),horiz = F)



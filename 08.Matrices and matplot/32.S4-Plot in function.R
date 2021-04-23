
myplot <- function()
{
  Data <- MinutesPlayed[2:3,,drop = F]
  matplot(t(Data), type = "b" ,pch = 15:18 ,col = c(1:4,6))
  legend("bottomleft",inset = 0.01 , legend = Players[2:3] ,pch = 15:18 ,col = c(1:4,6),horiz = F)
}

myplot()

#parameter
myplot <- function(rows)
{
  Data <- Points[rows,,drop = F]
  matplot(t(Data), type = "b" ,pch = 15:18 ,col = c(1:4,6))
  legend("bottomleft",inset = 0.01 , legend = Players[rows] ,pch = 15:18 ,col = c(1:4,6),horiz = F)
}

myplot(1:5)
myplot(1:10)



myplot <- function(data , rows )
{
  Data <- data[rows,,drop = F]
  matplot(t(Data), type = "b" ,pch = 15:18 ,col = c(1:4,6))
  legend("bottomleft",inset = 0.01 , legend = Players[rows] ,pch = 15:18 ,col = c(1:4,6),horiz = F)
}

myplot(Salary,1:5)
myplot(Salary,1:8)
myplot(Salary,1:10)

myplot <- function(data , rows =1:10)
{
  Data <- data[rows,,drop = F]
  matplot(t(Data), type = "b" ,pch = 15:18 ,col = c(1:4,6))
  legend("bottomleft",inset = 0.01 , legend = Players[rows] ,pch = 15:18 ,col = c(1:4,6),horiz = F)
}

myplot(Salary)  #now any matrix
myplot(Games)  
myplot(MinutesPlayed/Games)  

myplot(MinutesPlayed/Games , 3)  # specific players

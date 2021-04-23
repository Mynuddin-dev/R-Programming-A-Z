
myplot <- function(data , rows =1:10)
{
  Data <- data[rows,,drop = F]
  matplot(t(Data), type = "b" ,pch = 15:18 ,col = c(1:4,6))
  legend("bottomleft",inset = 0.01 , legend = Players[rows] ,pch = 15:18 ,col = c(1:4,6),horiz = F)
}

#salary
myplot(Salary)
myplot(Salary/Games)     # per game
myplot(Salary/FieldGoals)

#in Game Matrix
myplot(MinutesPlayed)
myplot(Points)

#In Game Matrix Normalized
myplot(FieldGoals/Games)
myplot(FieldGoals/FieldGoalAttempts) # Accuracy
myplot(FieldGoalAttempts/Games)
myplot(Points/Games)

#interesting Observation

myplot(MinutesPlayed/Games)
myplot(Games)

#Time is Valuable
myplot(FieldGoals/MinutesPlayed)

#Player style
myplot(Points/FieldGoals)








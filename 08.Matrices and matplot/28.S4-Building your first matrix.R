Salary
Games
MinutesPlayed
Points
FieldGoals
FieldGoalAttempts



#Genaral Formate of Matrix
# mymatrix <- matrix(vector, nrow=r, ncol=c, byrow=FALSE)

#  matrix() , rbind() ,cbind()   -> ways of creat matirx

?matrix()
my.data <- 1:20
my.data

A <- matrix(my.data,4,5,byrow = FALSE)

A
A[2,3]
B <- matrix(my.data,4,5,byrow = TRUE)
B
B[2,5]




# rbind()
?rbind()
x <- 1:5
x
y <- 6:10
y
z <- 11:15
z
# Create a matrix where x, y and z are crows
rbind(x, y, z)

r1 <- c("I" , " AM" ," Happy")
r2 <- c("What" , " A" ," Day")
r3 <- c(1,2,3)

rbind(r1,r2,r3)

cbind(r1,r2,r3)


# cbind()
# Create a matrix where x, y and z are columns
cbind(x, y, z)

# Creating a matrix with numeric and character columns will make everything a character:
cbind(c(1, 2, 3, 4, 5),c("a", "b", "c", "d", "e"))

cbind(c(1:5),c(-1:-5))

rates <- matrix(c(1.11,0.99,0.82) , nrow = 3 , ncol = 3)
rates




Points
rownames(Points)
colnames(Points)
colnames(FieldGoals)
Points["KevinDurant","2010"]


#matrix operation

Games
rownames(Games)
colnames(Games)

FieldGoals
FieldGoals / Games
round(FieldGoals / Games)
round(FieldGoals / Games ,1)
round(MinutesPlayed / Games ,1)
print(Salary + Games)
print(FieldGoalAttempts+FieldGoals)
print(FieldGoalAttempts-FieldGoals)
print(FieldGoalAttempts*FieldGoals)

print(round((FieldGoalAttempts/FieldGoals)*100)) # Accuracy


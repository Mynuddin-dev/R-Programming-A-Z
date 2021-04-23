# --------------------- Matrix Arithmatic --------------------------------

# colSums(), rowSums()

the_fellowship <- c(316 , 556)
two_towers <- c(343 , 584)
return_king<- c(378 , 742)

mat <- rbind(the_fellowship,two_towers,return_king)
mat

colnames(mat) <- c("US" , "Non-US")
rownames(mat) <- c("Fellowship" , "Two Towers" , "Return Kings")
mat

mat/1.12
mat-50

mat1 <-rbind(c(50,50),c(80,80),c(100,100))
mat1
class(mat1)
typeof(mat1)

mat-mat1

# Recycling
matrix(c(50,80,100) , nrow = 3 , ncol = 2)


# multiplication that's' element wise
rates <- matrix(c(1.11,0.99,0.82) , nrow = 3 , ncol = 2)
rates
mat
mat <- mat * rates
mat

mat + 10
mat




# Simple Arithmatic

matrix1 <- matrix(c(3, 9, -1, 4, 2, 6), nrow = 2)
matrix1
matrix2 <- matrix(c(5, 2, 0, 9, 3, 4), nrow = 2)
matrix2

result <- matrix1 + matrix2
result

result <- matrix1 - matrix2
print(result)

result <- matrix1 * matrix2
print(result)

result <- matrix1 / matrix2
print(result)

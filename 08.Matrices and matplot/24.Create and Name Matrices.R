# Vectors are One-dimensional, homogeneous data structures.
# Matrices are two-dimensional, homogeneous(same data type) data structures.
# and are arranged in a rectangular layout.We can create matrices of any of the six data types we discussed before
# Rows and Column (tables)
# One Atomic vector type

# Matrix can be created using the matrix() function.

?matrix()

matrix(1:6 , nrow = 2)
matrix(1:6 , ncol = 3)
matrix(1:9 , nrow = 3 , ncol = 3)
# Elements are arranged sequentially by row.
M <- matrix(c(1:12), nrow = 4, byrow = TRUE)
M
# Elements are arranged sequentially by column.
N <- matrix(c(3:14), nrow = 4, byrow = FALSE)
N

nrow(N)
ncol(N)
nrow(N) * ncol(N)
length(N)
dim(N)
attributes(N)
prod(dim(N))


# create a matrix : recycling
matrix(1:3 , nrow = 3 , ncol =3 )
matrix(1:5 , nrow = 3 , ncol =3 )
matrix(c(1:5) , nrow = 3 , ncol =3 )



?rbind()
?cbind()
cbind(1:3 , 1:3)   # vector or matrix
rbind(1:3 , 1:3)

m <- matrix(c(1:6),nrow = 2 , byrow = TRUE)
m
rbind(m , 7:9)
cbind(m , 10:11)



# Naming of a matrix
M
colnames (M)<- c("A","B","C")  
rownames (M)<- c("D","E","F","G")  
M

# Or

rownames = c("ROW1", "ROW2", "ROW3", "ROW4")
colnames = c("COL1", "COL2", "COL3")
P <- matrix(c(1:12), nrow = 4, byrow = TRUE, dimnames = list(rownames, colnames))
P

# Or

xx <- matrix(1:9, nrow = 3, dimnames = list(c("X","Y","Z"), c("A","B","C")))
xx
rownames(xx)
colnames(xx)






# Creating Special Matrix
matrix(5, 3, 3) # value , row , col

# Diagonal matrix having 3 rows and 3 columns
# filled by array of elements (5, 3, 3)
diag(c(5, 3, 3), 3, 3)

# Identity matrix having
# 3 rows and 3 columns
diag(1, 3, 3)




num <- matrix(1:9, nrow = 3)                            # integer
num
char <- matrix(LETTERS[1:9], nrow = 3)                   # character
char

cbind(num , char)
rbind(num , char)
# Contain Different types? use list or Data.frame



x1 <- matrix(seq(0, 4.5, length.out = 9), nrow = 3)    # double
x1

x4 <- matrix(TRUE, nrow = 3, ncol = 3)                 # Logical
x4








# From Data mentor Practice

matrix(1:9, nrow = 3, ncol = 3)
# same result is obtained by providing only one dimension
matrix(1:9, nrow = 3)
matrix(1:9, nrow=3, byrow=TRUE)    # fill matrix row-wise
x <- matrix(1:9, nrow = 3, dimnames = list(c("X","Y","Z"), c("A","B","C")))
x 
x[c(1,2),c(2,3)]   # select rows 1 & 2 and columns 2 & 3

x[c(3,2),]         # leaving column field blank will select entire columns

x[,]               # leaving row as well as column field blank will select entire matrix

x[-1,]             # select all rows except first

x[c(TRUE,FALSE,TRUE),c(TRUE,TRUE,FALSE)]
x[c(TRUE,FALSE),c(2,3)]     # the 2 element logical vector is recycled to 3 element vector
x[x>5]                      # select elements greater than 5
x[x%%2 == 0]                # select even elements
x[2,2] <- 10
x                           # modify a single element
#x[x<5] <- 0; x             # modify elements less than 5


t(x)                            # transpose a matrix
cbind(x, c(1, 2, 3))            # add column
rbind(x,c(1,2,3))               # add row
x <- x[1:2,];                  # remove last row

x
dim(x) <- c(3,2); x    # change to 3X2 matrix
dim(x) <- c(1,6); x    # change to 1X6 matrix

colnames(x)
rownames(x)
# It is also possible to change names
colnames(x) <- c("C1","C2","C3")
rownames(x) <- c("R1","R2","R3")
colnames(x)
rownames(x)
cbind(c(1,2,3),c(4,5,6)) #column based
rbind(c(1,2,3),c(4,5,6)) #column based



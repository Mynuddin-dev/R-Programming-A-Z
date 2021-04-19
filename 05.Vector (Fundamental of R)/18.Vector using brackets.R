

x <- c(21,23,45,65,32,23,45)    #combine
y <- seq(200,250,5)             #Sequence
z <- rep("Hello",3)             #replicaion

w <- c("a","b","c","d","e")
w
w[1]
w[3]
w[1:4]
w[-1]
w[-3]
w[-5] 
w[c(1,2,3)]
w[c(-2,-5)]
w[c(-3:-5)]


X <- c(1,-2,5.3,6,-20,4)                  # numeric vector
print(X)
Y <- c("one","two","three")               # character vector
print(Y)
Z <- c(FALSE,TRUE,FALSE,FALSE,TRUE,FALSE) #logical vector
print(Z)

X > 4

#n vector, Objects should be of single data type.
#vector doesn't accept multiple data type
k <- c(FALSE,1,-2.0,"two")
print(W)
mode(W)

# Accessing vector elements using position.
p <- c("Jan","Feb","Mar","April","May","June","July")
q <- p[c(2,3,6)]
print(q)


# Accessing vector elements using logical indexing.
r <- p[c(TRUE,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE)]
print(r)


# Accessing vector elements using negative indexing.

t <- p[c(-2,-5)]

print(t)


# Modifying a vector
# -------------------
# Modification of a Vector is the process of applying some operation on an 
# individual element of a vector to change its value in the vector

mv <- c(2, 7, 9, 7, 8, 2)
mv
# modify a specific element
mv[3] <- 1
mv[2] <- 9
mv

# Using Logic
mv[mv>5] <- 0
mv


mv <- mv[c(2,3,6)]
mv




# Deleting A vector
dv <- c(1,2,3,4,5,6)
dv
dv <- NULL
dv




#numerical vector sort
q1 <- c(1,2,14,5,7,3)
q1
sort(q1) # sorts in ascending order which is default
sort(q1,decreasing=TRUE) # sorts in descending order  

# Character vector sort
q2 <- c("Cherry","BlueBerry","Apple","Pineapple")
sort(q2) # sorts in Alphabetical order which is default
sort(q2,decreasing=TRUE) # sorts in Reverse Alphabetical order





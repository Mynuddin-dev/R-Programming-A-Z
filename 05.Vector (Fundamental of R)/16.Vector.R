
# vector - sequence of data element same basic type = index start with 1
# Vectors are "one-dimensional" data structures.
# Vectors in R are the same as the arrays in C language which are used to hold multiple data values of the same type

x <- c(0.5, 0.6)       ## numeric
x <- c(TRUE, FALSE)    ## logical
x <- c(T, F)           ## logical
x <- c("a", "b", "c")  ## character
x <- 9:29              ## integer
x <- c(1+0i, 2+4i)     ## complex


# Numeric vectors
# Numeric vectors are those which contain numeric values such as integer, float, etc.
firstvector <- c(3,4,5,42,35,464)
firstvector
is.numeric(firstvector)
is.integer(firstvector)
is.double(firstvector)
typeof(firstvector)

# Integer vector
vector <- c(3L,0L,34L,54L)
is.numeric(vector)
is.double(vector)
typeof(vector)


# Character vectors
# Character vectors contain alphanumeric values and special characters.
# by default numeric values  are converted into characters

v3 <- c("welcom","3","hello")
v3
is.character(v3)

v4 <- c("welcom","3","hello",6)
v4
is.character(v4)
typeof(v4)



# Logical vectors contain boolean values such as TRUE, FALSE and NA for Null values.

vc <- c(TRUE, FALSE, TRUE, NA)
typeof(vc)





# creating vectors alternative way

seq() #sequence - like m':'
rep() #replicate
seq(1:15)
1:15


seq(1,15)
seq(1,15,2)
seq(1,15,4)


rep(3, 10)
d <- rep(5,30)

rep("fuck the whole word",10)

x <- c(50,30)
y <- rep(x,5)
y
typeof(x)
class(x)


z <- 5:-5
z
typeof(z)
class(z)
is.vector(z)

seq(1, 3, by=0.2)          # specify step size
seq(1, 5, length.out=4) 
# length.out defines the length of vector.

x1 <- vector("numeric", length = 10) 
x1





# --------------- Single value vector -----------------
A <- 5
B <-c("Monu")
C <- TRUE
is.vector(A)
is.vector(B)
is.vector(C)




# There are two types of vectors:
# -------------------------------
# 1.Atomic vectors, of which there are six types: logical, integer, double, character,
# complex, and raw. Integer and double vectors are collectively known as numeric vectors.

# 2.Lists, which are sometimes called recursive vectors because lists can contain other lists(details in list part).



# An atomic vector is defined slightly different from specifications in is.atomic
# and is.vector: An atomic vector is either logical, integer, numeric, complex, 
# character or raw and can have any attributes except a dimension attribute (like 
# matrices). I.e., a factor is an atomic vector, but a matrix or NULL are not. 
# In short, this is basically equivalent to is.atomic(x) && !is.null(x) && is.
# null(dim(x))

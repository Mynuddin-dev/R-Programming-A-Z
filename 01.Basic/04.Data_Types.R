# Data types             Values
#---------------------------------------------------------

# Numeric	           Set of all real numbers
# Integer            Set of all integers, Z
# Logical            TRUE and FALSE
# Complex	           Set of complex numbers
# Character	         "a", "b", "c", ., "@", "#", "$", .., "1", "2", .etc

# R basic data types are character, numeric, integer, complex, and logical.

# R basic data structures include the vector, list, matrix, data frame, and factors. Some of these structures require that all members be of the same data type (e.g. vectors, matrices) while others permit multiple data types (e.g. lists, data frames)

# Objects may have attributes, such as name, dimension, and class.


# Numeric # double
x = 5 
y = 5.56
z = -5.00

print(x)
print(class(x))
print(typeof(x))

print(y)
print(class(y))
print(typeof(y))

print(z)
print(class(z))
print(typeof(z))

# Integer

a = 2
print(typeof(a))
print(class(a))

b = 2L     # the L tells R to store this as an integer
print(typeof(b))
print(class(b))

x = as.integer(5) 
print(class(x)) 
print(typeof(x)) 

# Logical

print( 4 > 5)
print( 4 < 5)

q <- TRUE
typeof(q)

q1 <- F
typeof(q1)
ls()
y == z
y > z

class(TRUE)
class(FALSE)
class(NA)

# Complex
m = 3 + 2i
m
typeof(m)


# Character 
M <- "R"
M
typeof(M)

E <- "Welcome to R"
E
typeof(E)


# fun_name <- function(arg1,arg2,........){
#   
#   Body
#   
# }
#fun_name() # function call


f <- function() {
  ## This is an empty function
}
class(f)  
f()   


f <- function() {
  cat("Hello Ostad j I am R")
}
class(f)  
f()    



f <- function(num) {
  for(i in seq_len(num))
  cat("Hello Ostad j I am R\n")
}
f(5)       



evenOdd = function(x){
  if(x %% 2 == 0)
    return("even")
  else
    return("odd")
} 

print(evenOdd(4))
print(evenOdd(3)) 



areaOfCircle = function(radius){
  area = pi*radius^2
  return(area)
}

print(areaOfCircle(2))





# Multiple Input Multiple Output

Rectangle = function(length, width){
  area = length * width
  perimeter = 2 * (length + width)
  
  # create an object called result which is
  # a list of area and perimeter
  result = list("Area" = area, "Perimeter" = perimeter) # as i already know about list
  return(result)
}

resultList = Rectangle(2, 3)
print(resultList["Area"])
print(resultList["Perimeter"])



# Inline function
f = function(x) x^2*4+x/3

print(f(4))
print(f(-2))
print(0)



# passing Argument
# Passing arguments to functions
# There are several ways you can pass the arguments to the function:
# Case 1: Generally in R, the arguments are passed to the function in the same order as in the function definition.
# Case 2: If you do not want to follow any order what you can do is you can pass the arguments using the names of the arguments in any order.
# Case 3: If the arguments are not passed the default values are used to execute the function.

Rectangle = function(length=5, width=4){
  area = length * width
  return(area)
}

# Case 1:
print(Rectangle(2, 3))

# Case 2:
print(Rectangle(width = 8, length = 4))

# Case 3:
print(Rectangle())





#Lazy evaluations of functions in R
Cylinder = function(diameter, length, radius ){
  volume = pi*diameter^2*length/4
  return(volume)
}

# This'll excute because this 
# radius is not used in the , if used there show an error
# calculations inside the function.
print(Cylinder(5, 10))










# https://www.geeksforgeeks.org/function-arguments-in-r-programming/
# There is no limit on the number of arguments in a function in R
#Function Arguments


divisbleBy5 <- function(n){
  if(n %% 5 == 0)
  {
    return("number is divisible by 5")
  }
  else 
  {
    return("number is not divisible by 5")
  }
}

# Function call
divisbleBy5(100)
divisbleBy5(4)
divisbleBy5(20.0)






divisible <- function(a, b){
  if(a %% b == 0)
  {
    return(paste(a, "is divisible by", b))
  }
  else 
  {
    return(paste(a, "is not divisible by", b))
  }
}

# Function call
divisible(7, 3)
divisible(36, 6)
divisible(9, 2)






divisible <- function(a, b = 3){
  if(a %% b == 0)
  {
    return(paste(a, "is divisible by", b))
  } 
  else
  {
    return(paste(a, "is not divisible by", b))
  }
}

# Function call
divisible(10, 5)
divisible(12)



# Dots Argument
# Dots argument (.) is also known as ellipsis which allows the function to take an undefined number of arguments. It allows the function to take an arbitrary number of arguments.

fun <- function(n, ...){
  l <- list(n, ...)
  paste(l, collapse = " ")
}

fun(5, 1L,  6i, TRUE, "GeeksForGeeks", "Dots operator")



# Function as an Argument
# Functions can be passed to another functions as arguments

fun <- function(x, fun2){
  return(fun2(x))
}

# sum is built-in function
fun(c(1:10), sum)

# mean is built-in function
fun(rnorm(50), mean)










# Types of Functions

# Calling a function without an argument
cube <- function()
{
  for(i in 1:10)
  {
    print(i^3)
  }
}

cube()




# Recursive function

factorial <- function(n)
{
  if(n==0)
  {
    return(1)
  }
  else 
  {
    return(n * factorial(n - 1))
  }
}

# calling function cube with an argument
factorial(5)






# Sum = 1^2+2^2+.+N^2
sum_series <- function(vec){
  if(length(vec)<=1)
  {
    return(vec^2)
  }
  else
  {
    return(vec[1]^2+sum_series(vec[-1]))
  }
}
series <- c(1:10)
sum_series(series)







def_arg <- function(a = 23, b = 35)
{
  output <- (a + b) * a + (a - b) * b
  print(output)
}

# calling function def_arg without an argument
def_arg()

# call the function with giving new values of the argument.
def_arg(16, 22)


#  Function Type
# https://www.geeksforgeeks.org/types-of-functions-in-r-programming/

typeof(sum)
typeof('[')
names(methods:::.BasicFunsList)








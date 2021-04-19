# take input from the user => For doing so, there are two methods in R.

# Using readline() method => takes input in string format
# Using scan() method

# as.integer(n); -> convert to integer
# as.numeric(n); -> convert to numeric type (float, double etc)
# as.complex(n); -> convert to complex number (i.e 3+2i)
# as.Date(n) -> convert to date ., etc

var = readline()
var = as.integer(var)
print(var)

v = readline(prompt = "Enter any number : ")
v = as.integer(v)
print(v)

# taking multiple inputs
# using braces 
{
  var1 = readline("Enter 1st number : ")
  var2 = readline("Enter 2nd number : ")
  var3 = readline("Enter 3rd number : ")
  var4 = readline("Enter 4th number : ")
}

# converting each value
var1 = as.integer(var1)
var2 = as.integer(var2)
var3 = as.integer(var3)
var4 = as.integer(var4)

# print the sum of the 4 number
print(var1 + var2 + var3 + var4)





var5 = readline(prompt = "Enter your name : ")
var6 = readline(prompt = "Enter any character : ")
var6 = as.character(var6)
print(var5)
print(var6)




# Scan Method :  This method reads data in the form of a vector or list.
# This method also uses to reads input from a file also.
# Syntax:
#   x = scan()
# 
# scan() method is taking input continuously, to terminate the input process,
# need to press Enter key 2 times on the console.

x = scan()

print(x)


# Syntax:
#   x = scan(what = double()) --for double
# x = scan(what = " ") --for string
# x = scan(what = character()) --for character

d = scan(what = double())
s = scan(what = " ")
c = scan(what = character())
print(d) # double
print(s) # string
print(c) # character




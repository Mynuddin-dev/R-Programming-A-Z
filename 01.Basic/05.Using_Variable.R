# R supports three ways of variable assignment:
  
# using equal operator- data is copied from right to left.
# using leftward operator- data is copied from right to left.
# using rightward operator- data is copied from left to right.

A = 20
B <- 25
10 -> D
C <- A+B

R <- 1/2*(A+B)*D
R1 <-sqrt(B)
R2 <-B/5

gretting <- "Hello"
names <- "Bob Wasup?"
massage <- paste(gretting,names)
massage

# ls() function
# This built in function is used to know all the present variables in the work space
ls()

# Remove a variable
a = 4
a
rm(a)
a

# Scope of Variables
# The location where we can find a variable and also access it if required is called the scope of a variable. There are mainly two types of variable scopes:
  
# Global Variables: Global variables are those variables that exist throughout the execution of a program. It can be changed and accessed from any part of the program.
# Local Variables: Local variables are those variables that exist only within a certain part of a program like a function and are released when the function call ends.

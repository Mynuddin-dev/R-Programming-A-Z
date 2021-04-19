# for (variable in sequence) {
#   statement
# }

for (i in 1:5) {
  print("Hello R Bro")
}
#####
for (v in 5:10) {
  print(v)
  v=v*v
  print(v)
}

######

for(i in 1:5)
{
  print (i^2)
}

######
for(i in 1:5)
{
  for(j in 1:2)
  {
    print(i*j);
  }
}

##### same
typeof(i)
class(v)


for(i in 1:5)
{
  for(j in 1:10)
  {
    cat("i*j = ",i,"*", j , "=" , i*j)
    print("") 
  }
}





# R switch statement 
# switch (expression, case1, case2, case3,.,case n )


x <- switch(  
  3,           # Expression
  "Hei",       # case 1
  "Bobs",      # case 2
  "Wasup"      # case 3
)  
print(x)



# val1 = 6  
# val2 = 7
# result = switch(  
#   "d",  
#   "a"= cat("Addition =", val1 + val2),  
#   "d"= cat("Subtraction =", val1 - val2),  
#   "r"= cat("Division = ", val1 / val2),  
#   "s"= cat("Multiplication =", val1 * val2),
#   "m"= cat("Modulus =", val1 %% val2),
#   "p"= cat("Power =", val1 ^ val2)
# )  
# 
# print(result)
# 


# if(<condition>) {
#   do something
# } 
# Continue with rest of code

x <- 100
if(x > 10){
  print(paste(x, "is greater than 10"))
}

if (TRUE) print ("One line executed")

if (FALSE) 
  {
  print ("Line not executed")
}
if (NA) print ("Don't know whether true or not!")
## Error: missing value where TRUE/FALSE needed

if(x==100) "Equal"
if(x==10) print("Equal")


n = 55
if(n%%2==0){
  print("n is Even Number")
}
if(n%%2==1){
  print("n is Odd Number")
}


# if else

if(n%%2==0){
  print("n is Even Number")
}else{
  print("n is Odd Number")
}


# nested if else
A <- 10
B <- 21
C <- 48

if(A>B){
  if(A>C)
  {
    print("A is greatest")
  }else
  {
    print("C is Greatest")
  }
   
} else if(B>A){
  if(B>C)
    {
    print("B is greatest")
  }else{
    print("C is Greatest")
  }
} else{
  print("C is greatest")
}



a <- 67
b <- 76
c <- 99

if(a > b && b > c)
{
  print("condition a > b > c is TRUE")
} else if(a < b && b > c)
{
  print("condition a < b > c is TRUE")
} else if(a < b && b < c)
{
  print("condition a < b < c  is TRUE")
}





rm(answer)
x <- rnorm(1)
if(x>1)
{
  answer <- "Greater than 1"
}else
{
  if(x >= -1)
  {
    answer <- "Between -1 to 1"
  }else
  {
    answer <- "Less than -1"
  }
  
}
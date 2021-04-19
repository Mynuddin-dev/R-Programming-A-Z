while (TRUE) {
  print("Hello")
}

counter <-1
 
while (counter<12) {
  print(counter)
  counter <- counter+1
}


i <- 1
while (i <=6) {
  print(i*i)
  i = i+1
}


i <- 1
while (i <= 6) {
  if (i==4)
    break;
  print(i*i)
  i = i+1
}



# Return Statement
func <- function(x){
  if(x > 0){
    return("Positive")
  }else if(x < 0){
    return("Negative")
  }else{
    return("Zero")
  }
}

func(1)
func(0)
func(-1)

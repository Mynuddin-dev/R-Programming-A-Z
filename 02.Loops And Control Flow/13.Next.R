
# Its like onthers language continue
# According to the  condition skip the statement
i <- 1
while (i <= 6) {
  if (i==4) 
  {
    i=i+1
    next;
  }
  print(i*i);
  i = i+1;
}



for(m in 1:100) {
  if(!m %% 5) {      # m %% 5 
    next                 
  }
  print(m)
  ## Do something here
}

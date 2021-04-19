

rnorm(100)

counter <- 0
for (i in rnorm(100)) {
    if(i > -1 & i < 1)
    {
        
        counter <- counter +1
    }
}
counter

#compare 68.2% or .682

N <-100
counter <-0
for (i in rnorm(N)) {
    if(i > -1 & i < 1)
    {
        
        counter <- counter +1
    }
}
counter / N


#---------------------------------
N <-1000   #input
counter <-0
for (i in rnorm(N)) {
    if(i > -1 & i < 1)
    {
        
        counter <- counter +1
    }
}
counter / N
#---------------------------------
N <-1000000
counter <-0
for (i in rnorm(N)) {
    if(i > -1 & i < 1)
    {
        
        counter <- counter +1
    }
}

counter / N



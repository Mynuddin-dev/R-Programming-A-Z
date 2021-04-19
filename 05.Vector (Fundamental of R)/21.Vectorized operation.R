x <- rnorm(5)
x
#R-Specific programming loop
for (i in x) {
  print(i)
}

print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])

#conventional programming loop
for (j in 1:5) {
  print(x[j])
}


#........The Second part
N <-100  # 1000 , 10000 , 100000 , 10000000 , 1000000000
a <-rnorm(N)
b <-rnorm(N)

#vectorized approach
c <- a * b    #faster

#De-Vectorized approach
d <-rep(NA,N)
for (i in 1:N) {
  d[i] <- a[i] * b[i]
}






# Third part

v <-  c(20,10,30,40,50)
v1 <- v+100
v2 <- v-13
v3 <- v/5
v4 <- v*5
v5 <- v^5
class(v5)

#vector element recycling
k1 <- c(1,2,4,5,7,11)
k2 <- c(4,11)    # V2 becomes c(4,11,4,11,4,11) 
add.result <- k1 + k2   # add.result just a variable
add_result <- k1 + k2
print(add.result) 
sub.result <- k1 - k2
print(sub.result)

k <-k1 + c(10,20,30)
kk <-k1 * c(10,20,30)
ko <-k1 * c(10,2,20,30) #error

sum(k1)

v > k1
k1 > k2
k2 > ko








# Create two vectors.
v1 <- c(3,8,4,5,0,11)
v2 <- c(4,11,0,8,1,2)

# Vector addition.
add.result <- v1+v2
print(add.result)

# Vector subtraction.
sub.result <- v1-v2
print(sub.result)

# Vector multiplication.
multi.result <- v1*v2
print(multi.result)

# Vector division.
divi.result <- v1/v2
print(divi.result)



# --------------------------------> Exploring data
states
nrow(states)
ncol(states)

rownames(states)
colnames(states)

head(states)
tail(states)
head(states , n=10)
tail(states , n=8)


str(states) #str()  runif() rnorm() interview Q

?runif()

summary(states)

typeof(states$Income.Group) #it shoulde be factor


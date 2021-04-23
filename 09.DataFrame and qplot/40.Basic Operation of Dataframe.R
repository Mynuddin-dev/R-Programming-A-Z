
#-----------------------------> Basic Operation Of DataFrame

states[1:10 ,]
states[4:9 ,]

states[c(4,100),]
states[,c(2,5)]

#Remember how the [] Works
states[1,]
is.data.frame(states[1,]) # no need to drop = F as like matrices
states[,1]
is.data.frame(states[,1])

states[,1,drop = F]
is.data.frame(states[,1,drop = F])

#Multiply Column
states$Birth.rate * states$Internet.users
states$Birth.rate + states$Internet.users
head(states)

#add column
head(states)
states$BR_IU <-states$Birth.rate *states$Internet.users
head(states)

#test of knowledge
states$xyz <- c(1:5)
head(states , n=13)

#remove a column
states$BR_IU <- NULL
states$xyz <- NULL
head(states)

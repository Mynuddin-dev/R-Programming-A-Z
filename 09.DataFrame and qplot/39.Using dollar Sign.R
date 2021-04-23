
#-----------------------------> using $ sign 

states
head(states)
states[3,3]
states[3,"Birth.rate"]

states["Angola",3]  #colun has name but row is not ,its number

states$Internet.users
states[,"Internet.users"]
states[["Internet.users"]]
states$Internet.users[2]

levels(states$Internet.users)
levels(states$Country.Name)
levels(states$Country.Code)

x <- states$Income.Group
x
x <- as.factor(x)
typeof(x)
class(x)

levels(x)

states$Income.Group
levels(states$Income.Group)

states$Income.Group <- as.factor(states$Income.Group)
str(states)
levels(states$Income.Group)

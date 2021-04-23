
#--------------------------> filtering DataFrames 
head(states)
head(states$Internet.users)

states$Internet.users < 2
filter <- states$Internet.users < 2
filter

states[filter,]        # filter is a logical vector

states[states$Birth.rate > 40,]
states[states$Birth.rate > 40 & states$Internet.users < 2,]
states[states$Income.Group == "High income",]

levels(states$Income.Group )
states[states$Country.Name == "Malta",]




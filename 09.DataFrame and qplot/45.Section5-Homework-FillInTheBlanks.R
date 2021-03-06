#Set the Working Directory
getwd()
setwd("G:\\R\\R Programing\\09.DataFrame")
getwd()

#Import the csv dataset
data <- read.csv("P2-Section5-Homework-Data.csv")

#Explore the data
data
head(data)      #check top 6 rows
head(data, n=7) #check bottom 7 rows
str(data)      #check the structure of the data frame
summary(data)      #check the summary of the data

#Did you pick up that there is more than one year in the data?
#From the challenge we know that there are two: 1960 and 2013

#Filter the dataframes
data1960 <- data[data$Year==1960,]
data1960
str(data1960)

data2013 <- data[data$Year==2013,]
data2013
str(data2013)

databoth <-data[data$Year==1960 | data$Year==2013,]
databoth
str(databoth)

187 + 187

#Check row counts
nrow(data1960) #187 rows
nrow(data2013) #187 rows. Equal split.

#Create the additional dataframes
add1960 <- data.frame(Code = Country_Code, Life.Exp=Life_Expectancy_At_Birth_1960)
add2013 <- data.frame(Code = Country_Code, Life.Exp=Life_Expectancy_At_Birth_2013)

#Check summaries
summary(add1960)
summary(add2013)

head(add1960)
head(add2013)

head(data1960)
head(data2013)

#Merge the pairs of dataframes  
merged1960 <- merge(data1960, add1960, by.x="Country.Code", by.y="Code")
merged2013 <-  merge(data2013, add2013, by.x="Country.Code", by.y="Code")

#Check the new structures
str(merged1960)
str(merged2013)

head(merged1960)
head(merged2013)

#We can see an obsolete column in each of the merged dataframes
#Column "Year" is no longer required. Let's remove it
merged1960$Year <- NULL
merged2013$Year <- NULL

head(merged1960)
head(merged2013)

#Check structures again
str(merged1960)
str(merged2013)

#Visualization time
library(ggplot2)

#Visualize the 1960 dataset
qplot(data = merged1960, x = Fertility.Rate, y = Life.Exp,
      color = Region,                               #colour
      size = I(5), 
      alpha = I(0.6),                               #transparency
      main="Life Expectancy vs Fertility (1960)" #title
   )

#Visualize the 2013 dataset
qplot(data = merged2013, x = Fertility.Rate, y = Life.Exp,
      color = Region,                               #colour
      size = I(5), 
      alpha = I(0.6),                               #transparency
      main="Life Expectancy vs Fertility (1960)" #title
)


# try yourself before you watch the solution 
# believe me if you correctly solved this you be happy and happy and happy





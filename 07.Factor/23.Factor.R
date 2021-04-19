# ------------------------------- Factor -----------------------------------
# Limited number of different category
# Belong to category

# Factors are the data objects which are used to categorize the data and store it as
# levels. They are useful for storing "categorical" data. They can store both strings
# and integers. They are useful to ""categorize unique"" values in columns like "TRUE" or
# "FALSE", or "MALE" or "FEMALE", etc.. They are useful in data analysis for statistical modeling.

#  These distinct(unique) values are known as levels

# Attributes of a Factor
# -------------------------
# x: It is the vector which needs to be converted into a factor.
# Levels: It is a set of distinct values which are given to the input vector x.
# Labels: It is a character vector corresponding to the number of labels.
# Exclude: This will mention all the values you want to exclude.
# Ordered: This logical attribute decide whether the levels are ordered.
# nmax: It will decide the upper limit for the maximum number of levels.


# Creating a factor
#   1.Creating a vector
#   2.Converting the vector created into a factor using function factor()

blood <-c("A","O","AB","A","B","AB","O")
blood

factr <- factor(blood)                  # sort the level alphabatically
factr
str(factr)

# different order level
factr1 <- factor(blood , levels = c("O" , "A" , "AB" , "B")) 
factr1


# Rename factor levels
# levels(factor) <- c("","","","",.............)
factr2 <- factor(blood , levels = c("O" , "A" , "AB" , "B"),
                 labels = c("BT_O" , "BT_A" , "BT_AB" , "BT_B")
                 ) 
factr2


# Nominal(compare kora jay) vs ordinal(order maintain kore)
factr2[1] < factr2[2]

tshirt <- c("S" , "L" ,"XXL", "M" , "L" , "S" , "XL" ,"M", "XXL" , "L","S")
tshirtFactor <- factor(tshirt,ordered = TRUE,
                 levels = c("S" , "M" , "L" , "XL" , "XXL"))
tshirtFactor

tshirtFactor[1]<tshirtFactor[2]








x <- factor(c("yes", "yes", "no", "yes", "no"),
            levels = c("yes", "no"))
x
str(x)





gender <- factor(c("female", "male", "male", "female","male","male","female"),
                 levels = c("female", "transgender", "male"));
gender

is.factor(gender)
typeof(gender)
class(gender)


# Accessing Element
gender
gender[3]
gender[1]
gender[4]
gender[c(1,3)]
gender[c(1,6)]


# Modify
gender[2]<-"female"
gender



# add new level
levels(gender) <- c(levels(gender), "other")    
gender[3] <- "other"
gender



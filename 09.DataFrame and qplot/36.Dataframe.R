# DataFrame's are generic data objects of R which are used to store the tabular
# data. Data frames are considered to be the most popular data objects in R
# programming because it is more comfortable to analyze the data in the tabular
# form. Data frames can also be taught as mattresses where each column of a matrix
# can be of the different data types. DataFrame are made up of three principal
# components, the data, rows, and columns



#The column names should be non-empty.
#The row names should be unique.
#The data stored in a data frame can be of     numeric, factor or character type.
#Each column should contain same number of data items.
#A data frame is used for storing data tables. It is a list of vectors of equal length.

#A data frame is a list of vectors which are of equal length.
#A matrix contains only one type of data,
# while a data frame accepts different data types (numeric, character, factor, etc.)


# In the real world, a DataFrame will be created by loading or import the 
# datasets from existing storage, storage can be SQL Database, CSV file, 
# and an Excel file. DataFrame can also be created from the vectors in R. 


# Using vector
employee <- c('John Doe','Peter Gynn','Jolie Hope')
salary <- c(21000, 23400, 26800)
startdate <- as.Date(c('2010-11-1','2008-3-25','2007-3-14'))

employ_data <- data.frame(employee, salary, startdate)

employ_data
str(employ_data)



# Naming the data Frame
employ_data <- data.frame(Employee = employee, Salary = salary,startdate = startdate)
employ_data

# or

names(employ_data) <- c("Employee Name" , "Salary Range","Starting Date")
employ_data

# Print the summary.
print(summary(employ_data))

# Get the structure of the data frame.
str(employ_data)


# Direct
emp_data <- data.frame(
    emp_id = c (1:5), 
    emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
    salary = c(623.3,515.2,611.0,729.0,843.25), 
    
    start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                           "2015-03-27")),
    stringsAsFactors = FALSE
)

emp_data
typeof(emp_name) # character vector => actually  factor thats because our by default
                 # stores the string as factor to supress this behavior you can 
                 # set the "string as factor" argument of the dataframe  function 
                 # False
class(emp_name)





# Subsetting
# Extract Specific columns.

employ_data

result <- data.frame(employ_data$`Employee Name`,employ_data$`Salary Range`)
is.data.frame(result)
result

r <- data.frame(employ_data[,c(1,2)]) 
print(r)
is.data.frame(r)


r2 <- employ_data[c(1,2),]
r2
r3 <- employ_data[c(1,2),c(2,3)]
r3
is.data.frame(r2)

employ_data[3,3]
employ_data[3,"Salary Range"]

employ_data$`Employee Name`
employ_data[["Employee Name"]]
employ_data[[1]]
employ_data[[2]]
employ_data[[2]][3]

employ_data$`Employee Name`[1]
employ_data$`Employee Name`[1:3]
employ_data$`Salary Range`
employ_data$`Starting Date`

employ_data[1,]
employ_data[2,]
employ_data[3,]
employ_data[1,3]
employ_data[1:3,]
employ_data[1:3]

employ_data[c(1,3),]
employ_data[c(1,3),c(1,3)]
employ_data[c(1,3),c(1)]

employ_data[1,2]
employ_data[2,3]
employ_data[3,2]

employ_data$`Salary Range`>21000

print(subset(employ_data ,`Salary Range`>21000))



# Add a Columns = Add Variables
# Add a Row = Add Observation


# Add the "Department" coulmns.
employ_data$Department <- c("IT","Operations","Finance")
employ_data
# or
rm(employ_data[["Gender"]])

employ_data[["Gender"]] <- c("Male","Female","Male")
employ_data

# or
# https://www.tutorialspoint.com/how-to-remove-a-column-from-an-r-data-frame

# Delete single column
# employ_data <- subset(employ_data , select = -Status)
# employ_data
employ_data$Status <- NULL


Status <- c("Married","Married","Unmarried")
employ_data <- cbind(employ_data , Status)
employ_data

# Delete columns
# employ_data <- subset(employ_data , select = -c(Status,Gender))
# employ_data

# Recommend  = do the column value NULL
employ_data$Status <- NULL
employ_data$Gender <- NULL



# Add a row
# u can't do it by using Vector or metrics (cause of same type)
# Simply use dataframe and merge or bind it

newdata <-data.frame("Monu",324000,"2022-03023","English")
is.data.frame(newdata)

rbind(employ_data , newdata) # error


newdata <-data.frame( "Employee Name" = "Monu",
                        "Salary Range" = 32400,
                        `Starting Date` = as.Date("2007-03-11"),
                        `Department`="English")

is.data.frame(newdata)
str(newdata)
str(employ_data)

names(newdata) <-c("Employee Name", "Salary Range" , "Starting Date" , "Department")

is.data.frame(newdata)
str(newdata)
str(employ_data)


rbind(employ_data , newdata) 
colnames(newdata)
colnames(employ_data)


# try with another dataframe
sort(employ_data$`Salary Range`)
order(employ_data$`Salary Range`)



#Merging the Dataframe
# Create the first data frame.
emp.data <- data.frame(
    emp_id = c (1:5), 
    emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
    salary = c(623.3,515.2,611.0,729.0,843.25), 
    
    start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                           "2015-03-27")),
    dept = c("IT","Operations","IT","HR","Finance"),
    stringsAsFactors = FALSE
)

# Create the second data frame
emp.newdata <- 	data.frame(
    emp_id = c (6:8), 
    emp_name = c("Rasmi","Pranab","Tusar"),
    salary = c(578.0,722.5,632.8), 
    start_date = as.Date(c("2013-05-21","2013-07-30","2014-06-17")),
    dept = c("IT","Operations","Fianance"),
    stringsAsFactors = FALSE
)
emp.data
emp.newdata

# Bind the two data frames.
emp.finaldata <- rbind(emp.data,emp.newdata)
print(emp.finaldata)






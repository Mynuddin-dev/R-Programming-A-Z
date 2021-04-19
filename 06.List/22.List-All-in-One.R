# -------------------- What is R List ------------------------ ?
# R list is the object .
# Lists are one-dimensional, heterogeneous data structures. The list can be a
# strings, numbers, vectors , list of vectors, a list of matrices, a list of
# characters and a list of functions, and so on. R list can also contain a matrix or a 
# function as its elements. The list is created using the list() function in R. 
# In other words, a list is a generic vector containing other objects.


L1 <- list ("Red", "Blue", c(42,36,01), FALSE, 73.91, 34,67)
L1


empId = c(1, 2, 3, 4)
empName = c("Debi", "Sandeep", "Subham", "Shiba")
numberOfEmp = 4
empList = list(empId, empName, numberOfEmp)
typeof(empList)
is.list(empList)
empList



# Naming
empList1 = list("Id"=empId, "Name" = empName, "Total Emp"=numberOfEmp)
empList1


# Accessing Element
empList1$Id
empList1$Name
empList1$`Total Emp`

empList1[1]
empList1[2]
empList1[3]

empList1[1:2]
empList1[1:3]
empList1[3]

empList1$Id
empList1$Id[2]

print(empList1[[2]][2])
print(empList1[[2]][1])
print(empList1[[2]][1:4])

empList1$Name
empList1$Name[2]
empList1$Name[4]
empList1$Name[2:3]

empList1$`Total Emp`
empList1$`Total Emp`[1]
empList1$`Total Emp`[5]
length(empList1$`Total Emp`)

print(empList[[2]][2])

# without naming access element
empList
empList[1]
empList[2]
empList[3]
empList[1:2]
empList[1:3]
print(empList[[2]] [2])
print(empList[[2]] [1])
print(empList[[2]] [1:4])
print(empList[[1]] [1])
print(empList[[3]] [1])

# Modifying components of a list

cat("Before modifying the list\n")
print(empList)

# Modifying the top-level component
empList$`Total Staff` = 5
empList

# Modifying inner level component
empList[[1]][5] = 500
empList
em.
pList[[2]][5] = "Kamala"
empList
cat("After modified the list\n")
print(empList)





# Concatenation of lists
# Syntax:
# -----------
# list = c(list, list1)
# list = the original list
# list1 = the new list


empList
empAge = c(34, 23, 18, 45)
empAgeList = list("Age" = empAge)

empList = c(empList, empAgeList)
empList

# delete elements(skip)
print(empList[-3])
print(empList[[2]][-2])



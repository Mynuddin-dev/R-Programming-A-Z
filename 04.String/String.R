a <- 'Start and end with single quote'
print(a)

b <- "Start and end with double quotes"
print(b)

c <- "single quote ' in between double quotes"
print(c)

d <- 'Double quotes " in between single quote'
print(d)

#Examples of Invalid Strings
# e <- 'Mixed quotes" 
# print(e)
# 
# f <- 'Single quote'  inside single quote'
# print(f)
# 
# g <- "Double quotes " inside double quotes"
# print(g)

#Concatenating Strings - paste() function
#paste(..., sep = " ", collapse = NULL)
#... represents any number of arguments to be combined.
#sep represents any separator between the arguments. It is optional.
#collapse is used to eliminate the space in between two strings.
#But not the space within two words of one string.
a<- "Hello"
b <- 'How'
c <- "are you? "

print(paste(a,b,c))

print(paste(a,b,c, sep = "-"))

print(paste(a,b,c, sep = "", collapse = ""))


#Numbers and strings can be formatted to a specific style using format() function.
#format(x, digits, nsmall, scientific, width, justify = c("left", "right", "centre", "none")) 
#x is the vector input.

#digits is the total number of digits displayed.
#nsmall is the minimum number of digits to the right of the decimal point.
#scientific is set to TRUE to display scientific notation.
#width indicates the minimum width to be displayed by padding blanks in the beginning.
#justify is the display of the string to left, right or center.

# Total number of digits displayed. Last digit rounded off.
result <- format(23.123456789, digits = 9)
print(result)

# Display numbers in scientific notation.
result <- format(c(6, 13.14521), scientific = TRUE)
print(result)

# The minimum number of digits to the right of the decimal point.
result <- format(23.47, nsmall = 5)
print(result)

# Format treats everything as a string.
result <- format(6)
print(result)

# Numbers are padded with blank in the beginning for width.
result <- format(13.7, width = 6)
print(result)

# Left justify strings.
result <- format("Hello", width = 8, justify = "l")
print(result)

# Justfy string with center.
result <- format("Hello", width = 8, justify = "c")
print(result)

#parameter is the vector input
r <- nchar("Count the number of characters")
print(r)

# Changing to Upper case.
r1 <- toupper("Changing To Upper")
print(r1)

# Changing to lower case.
r2 <- tolower("Changing To Lower")
print(r2)
# Extract characters from 5th to 7th position.
rt <- substring("abcdefghijkl", 5, 7)
print(rt)





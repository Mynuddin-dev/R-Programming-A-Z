M <- matrix(1:16, nrow = 4, byrow =TRUE ,dimnames = list(c("X","Y","Z","K"), c("A","B","C","D")))
M

M[]
M[,]


M[1,3]
M[3,3]
M[3,1]
M[2,2]
M[4,4]


M
M[1:3 , 2:4]
M[3:4 , 3:4]
M[2:4 , 2:4]



M[c(2,4) , c(2,4)]  # c(rows) , c (columns)
M[c(2,3) , c(1,4)]
M[c(1,3) , c(2,3)]

M[2,c(2,4)]
M[2:3,c(2,4)]
M[2:3,c(1,2,4)]
M[3,c(1,2,4)]
M[c(1,3),c(1,2,4)]


rownames(M)
colnames(M)
M

M["Y" , "C"]
M[2 , 3]
M["Y" , 3]
M[2 , "C"]

M["X" , "B"]
M["K" , "D"]
M["Z" , "C"]
M[c("Y","K") , "D"]
M[c("Y","K") , c("A","D")]
M[c("X","Y","K") , c("A","D")]

M[TRUE,TRUE]
M[c(TRUE,TRUE),c(TRUE , FALSE)] # reclying or replicate kore niche
M[c(TRUE,TRUE,FALSE,TRUE)] # column wise

M[c(TRUE,TRUE,FALSE,TRUE),c(TRUE,TRUE,FALSE,TRUE)] 
M[c(TRUE,FALSE,FALSE,TRUE),c(TRUE,TRUE,FALSE,TRUE)] 


M[2,]
M[,3]

M[4]  # column wise count
M[9]




# Transpose of a metrix
t(M)


# Row and column Deletion (actually not delete just skip)
M
M[-2,]
M[-2,-2]
M[-1,-3]
M[,-3]
M


M <- M[1:3,1:3]  # that's way you can delete a row or column 
M
rm(M)





#  ------------------------ Naming a vector -----------------------

NV1 <- c(23,45,67,87,43)
NV1
NV2 <- c("A","B","C","D","E")
NV2
names(NV1)

names(NV1) <- NV2
NV1
names(NV1)

# Clear names
names(NV1) <- NULL
names(NV1)


NV <- c("A" = 23 , "B" = 45 , "C" = 67 , "D" = 87 , "E" = 43)
NV

remove(NV)


NV <- c(A = 23 , B = 45 , C = 67 , D = 87 , E = 43)
NV

str(NV)



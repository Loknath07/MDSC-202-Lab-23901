A <- matrix(data=c(3,2,893,0.17),nrow=2,ncol=2)
A

#structure of Matrix
matrix(data = c(1,2,3,4,5,6),nrow=2,ncol=3,byrow=FALSE)  # In columns 
matrix(data = c(1,2,3,4,5,6),nrow=2,ncol=3,byrow=TRUE)   #In rows

# Arranging the multiple vectors in array
rbind(1:3,4:6)    #in rows
cbind(c(1,4),c(2,5),c(3,6))   # in columns

# Dimension of an matrix

matrix <- rbind(c(1,3,4),5:3,c(100,20,90),11:13)
dim(matrix)     # to get dimension of the matrix
nrow(matrix)    # to get no.of rows
ncol(matrix)     # to get no.of columns
dim(matrix)[2]   # to get dimension of column of a matric

# Extracting elements from a matrix
A <- matrix(c(0.3,4.5,55.3,91,0.1,105.5,-4.2,8.2,27.9),nrow=3,ncol=3)
A

diag(x=A)
A[3,2]
A[,2]
A[2:3,]
A[,c(3,1)]
A[c(3,1),2:3]

# Manipulating Matrix
A[,-2]           # remove 2nd col
A[-1,3:2]        
A[-1,-2]
A[-1,-c(2,3)]

B <- A
B

B[2,] <- 1:3
B


B[c(1,3),2] <- 900
B


B[,3] <- B[3,]
B

B[c(1,3),c(1,3)] <- c(-7,7)
B

B[c(1,3),2:1] <- c(65,-65,88,-88)
B


diag(x=B) <- rep(x=0,times=3)
B




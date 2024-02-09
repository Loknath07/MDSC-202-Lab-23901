# i have defined a Matrix A that is 4x4
A <- matrix(data=c(3,2,4,2,9,3,7,1,0,4,6,8,2,34,6,2),nrow=4,ncol=4)
A

# Finding eigenvalues and eigenvectors
eigen_result <- eigen(A)
eigen_result                                   # printing eigen values and vectors

# Finding eigenvalues 
eigenvalues <- eigen(A)$values
eigenvalues                                    # printing eigenvalues

# Finding eigenvectors
eigenvectors <- eigen(A)$vectors
eigenvectors                                  # printing eigenvectors

# Normalizing the eigenvectors
normalized_eigenvectors <- eigenvectors / sqrt(rowSums(eigenvectors^2))
normalized_eigenvectors                        # printing Normalized eigenvectors
  
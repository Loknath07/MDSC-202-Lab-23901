# If we Give a positive definite square matrix, it should find its squareroot matrix

# setting dimension of matrix
n = 3

# setting matrix input
matrix_input = c(1, 0, 0, 0, 2, 0, 0, 3, 0)

# defining matrix
M = matrix(matrix_input, nrow=n, ncol=n)

# getting eigen values and eigen vectors
eigen_data = eigen(M)

# getting squareroot of eigen values for lambda^-1
sqrt_eigvalues = sqrt(eigen_data$values)

# constructing lambda (diagonal matrix)
lambda = diag(sqrt_eigvalues)

# calculating squareroot matrix
sqrt_Matrix = eigen_data$vectors %*% lambda %*% solve(eigen_data$vectors)

print("Square root of M:")
print(sqrt_Matrix)

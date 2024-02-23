# Creating a vector with 30 elements in 15x2 matrix
data <- 1:30

# Creating a 15x2 matrix from the vector
matrix <- matrix(data, nrow = 15, ncol = 2, byrow = FALSE) 
print(matrix)            # Printing the matrix


x <- matrix[, 1]
y <- matrix[, 2]

# Mean
mean_x <- mean(x)
mean_y <- mean(y)

print(mean_x)
print(mean_y)      # printing Mean

# Variance
var_x <- sum((x - mean_x)^2) / (length(x) - 1)
var_y <- sum((y - mean_y)^2) / (length(y) - 1)

print(var_x)
print(var_y)      # printing Variance

# Covariance
covariance <- sum((x - mean_x) * (y - mean_y)) / (length(x) - 1)
print(covariance)   # printing  covariance

# Correlation
correlation <- covariance / (sqrt(var_x) * sqrt(var_y))
print(correlation)     # printing correlation

# Covariance matrix
covariance_matrix <- matrix(c(var_x, covariance, covariance, var_y), nrow = 2, byrow = TRUE)

# Correlation matrix
correlation_matrix <- matrix(c(1, correlation, correlation, 1), nrow = 2, byrow = TRUE)

print("Covariance Matrix:")
print(covariance_matrix)           # printing covariance_matrix

print("Correlation Matrix:")
print(correlation_matrix)         # printing correlation_matrix
 

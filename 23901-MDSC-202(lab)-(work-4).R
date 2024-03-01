# Reading Data from CSV
data <- read.csv("E://R///apple_quality.csv")

# Dropping unnecessary columns
data <- data[, !colnames(data) %in% c('A_id')]

# Convert categorical variable to numeric
data$Quality <- as.numeric(factor(data$Quality, levels = c("bad", "good")))

# Calculate mean vector
mean_vector <- colMeans(data)

# Calculate covariance matrix
cov_matrix <- matrix(NA, nrow = ncol(data), ncol = ncol(data))
for (i in 1:ncol(data)) {
  for (j in 1:ncol(data)) {
    cov_matrix[i, j] <- sum((data[, i] - mean_vector[i]) * (data[, j] - mean_vector[j])) / (nrow(data) - 1)
  }
}

# Calculate standard deviation vector
std_dev_vector <- sqrt(diag(cov_matrix))

# Calculate correlation matrix
cor_matrix <- cov_matrix / (std_dev_vector %*% t(std_dev_vector))

# Print Covariance Matrix
print("Covariance Matrix:")
print(cov_matrix)

# Print Correlation Matrix
print("Correlation Matrix:")
print(cor_matrix)


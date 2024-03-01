# Reading Data from CSV
dataset <- read.csv("E://R///apple_quality.csv")

# Dropping unnecessary columns
dataset <- dataset[, !colnames(dataset) %in% c('A_id')]

# Convert categorical variable to numeric
dataset$Quality <- as.numeric(factor(dataset$Quality, levels = c("bad", "good")))

# Calculate mean vector
mean_vector <- colMeans(dataset)

# Calculate covariance matrix
cov_matrix <- matrix(NA, nrow = ncol(dataset), ncol = ncol(dataset))
for (i in 1:ncol(dataset)) {
  for (j in 1:ncol(dataset)) {
    cov_matrix[i, j] <- sum((dataset[, i] - mean_vector[i]) * (dataset[, j] - mean_vector[j])) / (nrow(dataset) - 1)
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


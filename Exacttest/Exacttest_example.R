# Generate some sample data
group1 <- c(12, 15, 18, 20, 22)
group2 <- c(10, 14, 16, 19, 21)

# Perform an exact t-test
result <- t.test(group1, group2, exact = TRUE)

# Print the result
print(result)

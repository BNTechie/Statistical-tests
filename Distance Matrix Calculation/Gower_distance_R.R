# Create example data
set.seed(123)

# create a sample data frame with mixed data types
df <- data.frame(
  numeric_var = c(1,2,3,4),
  categorical_var = c("Ni", "V", "E", "C"),
  binary_var = c(0,1,0,1)
)

# calculate the mean and range of the numeric variable
mean_numeric_var <- mean(df$numeric_var)
range_numeric_var <- range(df$numeric_var)

# normalize the numeric variable
df$numeric_var <- (df$numeric_var - mean_numeric_var) / range_numeric_var

# convert categorical variable to binary
df$categorical_var <- ifelse(df$categorical_var == "A", 1, 0)

# convert binary variable to binary
df$binary_var <- as.numeric(df$binary_var)

library(cluster)
daisy.mat <- as.matrix(daisy(df, metric="gower"))

library(StatMatch)
gower.mat <- gower.dist(df)

# you can look directly to see the numbers are the same
head(daisy.mat, 3)
head(gower.mat, 3)

#identical(daisy.mat, gower.mat)
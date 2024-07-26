# Gower-distance

## What is Gower’s distance?

Suppose we have two observations $x_i = (x_{i1}, \dots, x_{ip})$ and $x_j = (x_{j1}, \dots, x_{jp})$, and we want a measure of how similar (or dissimilar) they are to each other. If each of the entries in these two vectors are quantitative (e.g., continuous variables), then we can use distance measures as a dissimilarity measure (e.g. Euclidean distance, Manhattan distance). How do we measure dissimilarity if instead of all numbers being numeric, some of them are binary/catagorical?

In this situation one can implement and generalised idea of similarity matrix know as Gower's distance. For each feature $k = 1, \dots, p$, we define a score $s_{ijk} \in [0,1]$. If $x_i$ and $x_j$ are close to each other along feature $k$, then the score $s_{ijk}$ is close to $1$. Conversely, if they are far apart along feature $k$ the score $s_{ijk}$ is close to $0$.

Finally, a linear combination using user-specified weights (most simply an average) is calculated to create the distance matrix.

The metrics used for each data type are as following:

Quantitative (interval) variables range-normalized Manhattan distance
Ordinal variables: variable is first ranked, then Manhattan distance is used with a special adjustment for ties
Nominal: variables of k categories are first converted into k binary columns and then the Dice coefficient is used

Advantage of this method is it is intuitive to understand and pretty straightforward to calculate.However, this method is sensitive to non-normality and outliers present in continuous variables and hence, appropriate transformations as a pre-processing step might be necessary. Besides, it can be computationally intensive for large samples as itrequires an NxN distance matrix to be calculated.

Let's try an example. There are two popular R functions from Cluster and Statmatch packages which can calculate Gower's distance.


```
# Create example data
set.seed(123)

# create a sample data frame with mixed data types
df <- data.frame(
  numeric_var = c(1,2,3,4),
  categorical_var = c("A", "V", "E", "C"),
  binary_var = c(0,1,0,1)
)

```
$df$ is a dataframe with mixed type of data. Before calculating the distance the data needs preprocessing.

```
# calculate the mean and range of the numeric variable
mean_numeric_var <- mean(df$numeric_var)
range_numeric_var <- range(df$numeric_var)

# normalize the numeric variable
df$numeric_var <- (df$numeric_var - mean_numeric_var) / range_numeric_var

# convert categorical variable to binary
df$categorical_var <- ifelse(df$categorical_var == "A", 1, 0)


# convert binary variable to binary
df$binary_var <- as.numeric(df$binary_var)

```
Both daisy function and gower.dist function calculates gower's distance matrix. 
```
library(cluster)
daisy.mat <- as.matrix(daisy(df, metric="gower"))

library(StatMatch)
gower.mat <- gower.dist(df)
```

One can check if they produce differnet results.
```
head(daisy.mat, 3)
head(gower.mat, 3)
#identical(daisy.mat, gower.mat)
```








#### References: Gower, J. C. (1971), “A general coefficient of similarity and some of its properties”. Biometrics, 27, 623–637.





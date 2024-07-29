# Granger-causality-with-Example-in-R

## What is Granger causality?

Granger causality is a statistical concept used to determine whether one time series is useful in forecasting another. Named after the economist Clive Granger, who developed the approach, Granger causality is not causality in the traditional sense—it does not test whether one variable actually causes another to change. Instead, it tests whether the values of one time series contain useful information that can predict future values of another series.

An example of how to perform Granger causality tests using R, including data preparation, testing for stationarity, and conducting the actual Granger test. We'll use synthetic data for simplicity but will simulate a scenario more closely resembles a real-world analysis.

### Step-by-Step Granger Causality Test with R

#### Step 1: Simulate Data
We'll create two time series where one series is explicitly derived from another with some added noise, which can help illustrate a potential Granger causality.

```r
# Simulate some time series data
set.seed(42)
n <- 100
X <- cumsum(rnorm(n))  # Cumulative sum to induce a trend
Y <- lag(X, -1) + rnorm(n) * 0.5  # Y is dependent on X with noise

# Convert to ts objects
X.ts <- ts(X)
Y.ts <- ts(Y)
```

#### Step 2: Check for Stationarity
Before applying Granger causality, it’s crucial to ensure the data are stationary. We can use the Augmented Dickey-Fuller (ADF) test from the `tseries` package:

```r
library(tseries)

# Perform ADF test to check for stationarity
adf.test(X.ts, alternative = "stationary")
adf.test(Y.ts, alternative = "stationary")
```

If either series is not stationary, you might need to difference the data to make it stationary. For our purposes, assume both are stationary or have been made stationary through differencing.

#### Step 3: Apply the Granger Causality Test
Now, let's perform the Granger causality test. We'll test both if X Granger-causes Y and if Y Granger-causes X to demonstrate bidirectionality.

```r
library(lmtest)

# Granger causality test
granger.test.X_causes_Y <- grangertest(Y.ts, X.ts, order = 2)
granger.test.Y_causes_X <- grangertest(X.ts, Y.ts, order = 2)

print(granger.test.X_causes_Y)
print(granger.test.Y_causes_X)
```

In these commands, `order = 2` implies that we consider 2 lags of each variable to see if past values of one series improve the forecast of the other.

#### Step 4: Interpret the Results
The results will give you a p-value for each test. A low p-value (typically <0.05) indicates that you can reject the null hypothesis that the lagged values of the independent series do not help in predicting the future values of the dependent series, thus implying Granger causality.

### Additional Considerations
- **Bi-directionality**: Sometimes, both series can Granger-cause each other, which is common in economic time series where variables might interact.
- **Lag Selection**: Choosing the correct number of lags is crucial. Too few lags might miss longer-term causal relationships, while too many lags can lead to overfitting. Criteria such as AIC (Akaike Information Criterion) or BIC (Bayesian Information Criterion) can be used to select the optimal lag length.
- **Nonlinear Relationships**: Standard Granger causality tests assume linear relationships. If you suspect non-linear interactions, you might need to consider more advanced methods or transform the data accordingly.

This example should provide a good foundation for conducting Granger causality tests in R, allowing you to explore potential predictive causal relationships in time series data effectively.

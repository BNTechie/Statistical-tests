# What is exact ttest? An example in R.

An exact test is a statistical test that provides an exact p-value without relying on large-sample approximations. These tests are particularly useful when sample sizes are small, making the assumptions of asymptotic tests (tests relying on large-sample approximations) potentially unreliable.

In the context of hypothesis testing, an exact test computes the probability of observing the test statistic under the null hypothesis exactly, without relying on asymptotic distributions. This is often done by considering all possible outcomes that are at least as extreme as the observed data and calculating the probability of obtaining these outcomes under the null hypothesis.

Exact tests are commonly used in situations where the assumptions of parametric tests (such as the t-test, chi-square test, etc.) may not be met, such as small sample sizes, non-normal distributions, or when dealing with categorical data.

One common type of exact test is the Fisher's exact test, which is used to test the association between two categorical variables in a contingency table when sample sizes are small.

In R, when you specify `exact = TRUE` in functions like `t.test()` or `chisq.test()`, it often indicates that an exact test should be performed rather than relying on asymptotic approximations.

```
# Generate some sample data
group1 <- c(12, 15, 18, 20, 22)
group2 <- c(10, 14, 16, 19, 21)

# Perform an exact t-test
result <- t.test(group1, group2, exact = TRUE)

# Print the result
print(result)

```



#  Mann-Whitney U test

The Mann-Whitney U test, also known as the Mann-Whitney-Wilcoxon test or Wilcoxon rank-sum test, is a non-parametric statistical test used to compare two independent groups to determine whether their distributions are the same or if one tends to have larger values than the other.

Here's how it works:

1. **Ranking**: Combine the data from both groups and rank them from smallest to largest, disregarding which group they come from. Ties are handled by assigning the average rank to tied values.

2. **Calculating U statistic**: The U statistic is calculated by summing the ranks of the observations from one group. It represents the number of times a randomly selected observation from group 1 would have a lower rank than a randomly selected observation from group 2.

3. **Hypothesis testing**: The null hypothesis of the Mann-Whitney U test is that there is no difference between the two groups' distributions. The alternative hypothesis is that one group tends to have larger values than the other.

4. **P-value calculation**: The significance of the U statistic is determined through reference to the Mann-Whitney U distribution under the null hypothesis. The p-value indicates the probability of observing a U statistic as extreme as the one calculated from the data, assuming the null hypothesis is true.

The Mann-Whitney U test is commonly used when the assumptions of parametric tests like the t-test are violated, such as when the data are not normally distributed or when there are outliers. It's widely applicable in various fields, including biology, social sciences, and engineering, where comparing groups with ordinal or non-normally distributed data is common.

# Fisher's exact test
Fisher's exact test is a statistical test used to determine if there is a significant association between two categorical variables in a contingency table. It's particularly useful in the following situations:

1. **Small Sample Sizes**: Fisher's exact test is especially suitable when dealing with small sample sizes. In situations where the sample size is small, traditional chi-square tests may not provide accurate results due to assumptions of asymptotic distributions.

2. **Binary or Categorical Data**: Fisher's exact test can be used when both variables are categorical and the data are represented in a contingency table. This makes it applicable to a wide range of research fields, such as medicine, biology, social sciences, and more.

3. **Sparse Data**: Fisher's exact test is robust when dealing with sparse data, meaning that the counts in the contingency table are low in some cells. It provides reliable results even when some expected cell frequencies are small.

4. **Independence Testing**: Fisher's exact test is employed to assess whether there is a statistically significant association or dependency between the two categorical variables. For instance, it can be used to determine if there's an association between smoking status (smoker/non-smoker) and the incidence of lung cancer (affected/not affected).

5. **Comparing Proportions**: Fisher's exact test is commonly used to compare proportions between groups or populations. It can determine whether the proportion of individuals with a certain characteristic differs significantly between the groups.

Overall, Fisher's exact test is valuable when you need to analyze categorical data with small sample sizes or sparse data and assess the association or dependency between two categorical variables. It provides a robust and accurate method for determining statistical significance in these scenarios.

Fisher's exact test is a statistical test used to determine if there are nonrandom associations between two categorical variables in a contingency table, especially when sample sizes are small. Here's a step-by-step guide on how to perform Fisher's exact test manually:

Suppose you have a contingency table like this:

```
           Group A    Group B    Total
Outcome 1    a          b        a + b
Outcome 2    c          d        c + d
Total        a + c      b + d    a + b + c + d
```

Where:
- "a" represents the frequency of observations where both Outcome 1 and Group A occur.
- "b" represents the frequency of observations where Outcome 1 occurs with Group B.
- "c" represents the frequency of observations where Outcome 2 occurs with Group A.
- "d" represents the frequency of observations where both Outcome 2 and Group B occur.

The null hypothesis of Fisher's exact test is that there is no association between the two categorical variables.

Here's how you can perform Fisher's exact test manually:

1. **Calculate Factorials**: Calculate the factorials of all the numbers involved: \(a!\), \(b!\), \(c!\), \(d!\), \(n!\), \((a+b)!\), \((c+d)!\), \((a+c)!\), \((b+d)!\), and \(N!\), where \(n = a + b + c + d\) and \(N\) is the total number of cells in the contingency table.

2. **Calculate the Hypergeometric Probability**: Calculate the probability of observing the current arrangement of values under the null hypothesis. This is given by the formula:

   \[
   \text{{Probability}} = \frac{{a! \times b! \times c! \times d!}}{{n! \times (a+b)! \times (c+d)!}}
   \]

3. **Calculate the Total Number of Arrangements**: Calculate the total number of arrangements that have the same marginal totals as your observed data. This is given by the formula:

   \[
   \text{{Total arrangements}} = \frac{{(a+c)! \times (b+d)!}}{{N!}}
   \]

4. **Calculate the p-value**: The p-value is the probability of observing a table as extreme or more extreme than the observed table under the null hypothesis. This can be calculated by summing the probabilities of all tables with probabilities less than or equal to the probability of the observed table.

   \[
   \text{{p-value}} = \sum_{i=0}^{min(a+c,b+d)} \frac{{(a+c)!(b+d)!}}{{i! \times (a+i)!(b-i)!(c+i)!(d-i)!}}
   \]

5. **Compare p-value to Significance Level**: Compare the p-value to your chosen significance level (e.g., 0.05). If the p-value is less than or equal to the significance level, reject the null hypothesis and conclude that there is evidence of an association between the two categorical variables. Otherwise, fail to reject the null hypothesis.

Performing Fisher's exact test manually can be quite laborious, especially for larger contingency tables. Therefore, it's often more convenient to use statistical software or programming libraries that provide built-in functions for conducting Fisher's exact test, such as R's `fisher.test()` function or Python's `scipy.stats.fisher_exact()` function. These functions automate the calculations and provide accurate results efficiently.

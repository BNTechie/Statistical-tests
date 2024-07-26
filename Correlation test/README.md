# What is the Correlation test in statistics?

Correlation tests are statistical methods used to quantify the strength and direction of the relationship between two or more variables. They are commonly used to assess associations between variables in various fields, including statistics, economics, biology, and, social sciences. Here are some different correlation tests:

**Pearson Correlation Coefficient (Pearson's r)**:

Pearson's correlation measures the linear relationship between two continuous variables. It ranges from -1 (perfect negative correlation) to 1 (perfect positive correlation), with 0 indicating no linear correlation.
Assumptions: Variables should be approximately normally distributed, and the relationship should be linear.


**Spearman Rank Correlation (Spearman's ρ)**:

Spearman's correlation assesses the strength and direction of a monotonic (non-linear) relationship between two variables. It is based on the ranks of data points rather than the raw data.
Assumptions: Variables should be ordinal, interval, or ratio scale; non-linear relationships are acceptable.

**Kendall's Tau (Kendall's τ)**:

Kendall's Tau is another rank-based correlation coefficient used to measure the strength and direction of association between two variables. It is often used when data are not normally distributed.
Assumptions: Like Spearman's, Kendall's Tau is suitable for ordinal, interval, or ratio data.

**Point-Biserial Correlation**:

Point-biserial correlation is used when one variable is binary (e.g., yes/no) and the other is continuous. It quantifies the strength and direction of the association between the two variables.
Assumptions: The continuous variable should be approximately normally distributed.

**Phi Coefficient (ϕ)**:

The Phi Coefficient (ϕ) is a measure of association for two binary variables. It is equivalent to the Pearson correlation coefficient for binary data. 

**Cramer's V**:

Cramer's V is used to measure the strength of association between two nominal variables. It is an extension of the phi coefficient for variables with more than two categories.
Assumptions: Both variables should be nominal.

**Polychoric Correlation**:

Polychoric correlation is used to assess the association between two ordinal variables by estimating a correlation coefficient that assumes an underlying bivariate normal distribution.
Assumptions: Both variables should be ordinal.


**Partial correlation**:
Partial correlation is a statistical technique used to measure the strength and direction of the linear relationship between two variables while controlling for the influence of one or more additional variables, often referred to as "covariates" or "control variables." In other words, partial correlation assesses the association between two variables while holding the effects of other variables constant.


## Why Pearson's correlation does not work in all situations? How Spearman's rank test help?

Spearman correlation and Pearson correlation are two different methods for measuring the association between two variables. They are used in different situations and have their own strengths and weaknesses. The choice between Spearman and Pearson correlation depends on the nature of your data and the assumptions you can make about it.

Here's why you might need Spearman correlation and why Pearson correlation might not be suitable:

Data Type:

Spearman Correlation: Spearman is a non-parametric method, which means it doesn't assume a linear relationship between variables. It is suitable for ordinal or ranked data, as well as continuous data, when the assumptions of Pearson correlation are not met. Spearman is robust to outliers and can capture monotonic (but not necessarily linear) relationships.
Pearson Correlation: Pearson assumes a linear relationship between variables. It is best used with continuous, numerical data that follows a normal distribution. If your data doesn't meet the linearity assumption, Pearson correlation may not be the most appropriate choice.

Outliers:

Spearman Correlation: Spearman is robust to outliers. Outliers can strongly affect the results of Pearson correlation, particularly if they have a substantial impact on the linearity and normality assumptions.
Pearson Correlation: Pearson can be sensitive to outliers. If outliers are present in your data and you cannot remove or transform them, Spearman may be a better choice to reduce their influence.
Level of Measurement:

Spearman Correlation: It's suitable for ordinal and interval data, making it versatile when dealing with various types of variables.
Pearson Correlation: Pearson is primarily designed for interval and ratio data.
Assumption of Linearity:

Spearman Correlation: Does not assume linearity. It only assumes that the relationship between variables is monotonic (i.e., consistently increasing or decreasing).
Pearson Correlation: Assumes linearity, which means it might not accurately represent the relationship between variables when it's not linear.
In summary, you might need Spearman correlation when you have data that doesn't meet the assumptions of Pearson correlation, such as non-normally distributed data, ordinal data, or data with outliers. If you have continuous data with a linear relationship and you are confident in the normality assumption, Pearson correlation may be more appropriate. The choice between these two methods should be based on the nature of your data and the research questions you are trying to answer.








**Tetrachoric correlation**:
The tetrachoric correlation coefficient is a statistical measure used to assess the strength and direction of the association between two binary or dichotomous variables. Unlike traditional correlation coefficients like Pearson's correlation, which are used for continuous variables, the tetrachoric correlation is specifically designed for variables that take on only two values (typically coded as 0 and 1). It is particularly useful in situations where researchers want to analyze the relationship between two categorical variables with binary outcomes.

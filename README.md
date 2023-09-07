# PARMANOVA: Permutational Multivariate Analysis of Variance (PERMANOVA)

Permutational Multivariate Analysis of Variance (PERMANOVA) is a non-parametric statistical method used to assess the differences in multivariate data among groups or treatments. It is particularly useful when the assumptions of traditional parametric techniques like MANOVA (Multivariate Analysis of Variance) are not met or when dealing with complex ecological or biological data.

PERMANOVA works by randomly permuting (rearranging) the observations within the data matrix while maintaining the same group assignments. By doing this repeatedly, it creates a null distribution against which the observed differences can be compared to determine if they are statistically significant. Here's how PERMANOVA works:

1. **Data Structure**: PERMANOVA is suitable for situations where you have multivariate data with several dependent variables (e.g., species composition in ecological communities) and a categorical factor (e.g., different experimental treatments, sites, or time points).

2. **Hypotheses**: The primary hypothesis tested by PERMANOVA is whether there are significant differences among the groups defined by the categorical factor in terms of the multivariate data. The null hypothesis is that there are no differences among groups.

3. **Permutations**: PERMANOVA calculates a test statistic based on the multivariate distance or dissimilarity between observations within groups and between groups. To assess the significance of this statistic, it randomly permutes the data, shuffling the group assignments multiple times (often thousands of permutations).

4. **Test Statistic**: The most commonly used test statistic in PERMANOVA is the pseudo-F statistic, which measures the ratio of the between-group variability to the within-group variability in the dissimilarity matrix. The observed pseudo-F statistic is compared to the distribution of pseudo-F values generated from the permuted data to determine its significance.

5. **Example**:

   Let's say you are an ecologist studying the impact of three different types of land use (Agricultural, Urban, and Natural) on plant species composition in a particular region. You collect data on the abundance of various plant species at multiple sampling sites within each land use type.

   - Null Hypothesis (H0): There is no difference in plant species composition among the three land use types.

   - Alternative Hypothesis (Ha): There are significant differences in plant species composition among the three land use types.

   You would perform a PERMANOVA using your multivariate plant species data and the land use type as a categorical factor. After running the analysis and performing permutations, you obtain an observed pseudo-F statistic.

   If the observed pseudo-F statistic is significantly different from the pseudo-F values obtained from the permuted data (i.e., it falls outside the range of values expected by chance), you would reject the null hypothesis, indicating that there are indeed significant differences in plant species composition among the land use types.

PERMANOVA is a robust and versatile method for analyzing multivariate data, especially when the data do not meet the assumptions of traditional parametric approaches or when dealing with complex ecological or biological datasets. It provides a powerful tool for testing the significance of group differences while accounting for the interrelationships among multiple variables.

An example code in R is provided in this repository following the site: https://archetypalecology.wordpress.com/2018/02/21/permutational-multivariate-analysis-of-variance-permanova-in-r-preliminary/



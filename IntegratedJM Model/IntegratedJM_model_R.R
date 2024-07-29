
library(IntegratedJM)
data(sampleData)
gene_mx <- sample_data[[1]]
activity <- sample_data[[2]]
fp <- sample_data[[3]]
jmRes <- fitJM(dat=gene_mx,responseVector=activity,covariate = fp,methodMultTest='fdr')

topkGenes(jmRes, "Correlation" , ranking= "Pearson", k = 10, sigLevel = 0.01)

volcano(x=jmRes$CovEffect1, pValue = jmRes$rawP1, pointLabels=rownames(jmRes),topPValues = 10, topXvalues = 10,xlab="FP Effect (alpha)",ylab="-log(p-values)")

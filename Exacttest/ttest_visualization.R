#Example code to visualize ttest results

library(MASS)
h=na.omit(survey$Height)
pop.mean=mean(h)
h.sample = sample(h,30)
t.test(h.sample,mu=pop.mean)

library(gginference)
ggttest(t.test(h.sample,mu=pop.mean))
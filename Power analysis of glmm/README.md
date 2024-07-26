# Power analysis of generalized linear mixed-models by simulation

#simr: Power Analysis for Generalised Linear Mixed Models by Simulation


```library(simr)
model1 <- glmer(z ~ x + (1|g), family="poisson", data=simdata)
summary(model1)
```


```
fixef(model1)["x"]
fixef(model1)["x"] <- -0.05
powerSim(model1)
```

## Increasing sample size

```
model2 <- extend(model1, along="x", n=20)
powerSim(model2)
```

##Identifying the Minimum Sample Size Required
```
pc2 <- powerCurve(model2)
print(pc2)
plot(pc2)
```

##Varying the number and size of groups
##Adding More Groups

```
model3 <- extend(model1, along="g", n=15)
pc3 <- powerCurve(model3, along="g")
plot(pc3)
```


Reference webpage: https://cran.r-project.org/web/packages/simr/index.html


# Download data online. 
data<- read.csv('http://static.lib.virginia.edu/statlab/materials/data/mediationData.csv')

model.M <- lm(M ~ X, data)
summary(model.M)

model.Y <- lm(Y ~ X + M, data)
summary(model.Y)

library(mediation)
results <- mediate(model.M, model.Y, treat='X', mediator='M',
                   boot=TRUE, sims=500)
summary(results)
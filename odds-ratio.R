

#Replicate given table of data

#Analysis
```{r}
stopped<-c(3,21)
not.stopped<-c(13,19)
color<-c("white","not.white")
model<-glm(cbind(stopped, not.stopped)~color,family=binomial)
summary(model)
```

#Estimating odds ratio
```{r}
exp(model$coefficients[2])
```

It is 79% less likely that a white person is stopped by TSA compared to a non white person. 


# Is there an association between skin color (white vs non-white) and being stopped by TSA?

```{r}
model.0<-glm(cbind(stopped,not.stopped)~1,family=binomial)
anova(model.0,model,test="Chisq")
```

Since p-value is 0.01705 there is considerable evidence at 5% significance level that there is an association between skin color and being stopped by TSA. 


library(rpart)
library(rpart.plot)
library(survival)

stagec
fit<-rpart(Surv(pgtime,pgstat)~age+eet+g2+grade+gleason+ploidy,stagec,method='exp')

print(fit)
printcp(fit)

plot(fit,uniform = T,branch = 0.6,compress = T)
text(fit,use=T)

#use prune to pruning
fit2=prune(fit,cp=0.016)

plot(fit2,uniform = T,branch = 0.6,compress = T)
text(fit2,use=T)

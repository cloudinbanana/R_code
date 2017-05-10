rm(list=ls())
n=100
count=0
count1=0
a=0
b=0
c=0
d=0
gauss=0
boot=0
for(j in 1:n){
  gauss<-rnorm(100,2,6)
  boot<-0
for(i in 1:1000){
    boot[i]=mean(sample(gauss,replace=T))
  }
  a[j]=abs(mean(boot)-2)
  b[j]=abs(mean(gauss)-2)
  
  c[j]=abs(sd(boot))
  d[j]=abs(sd(gauss))
  if(a[j]<b[j]){
    count[j]=1
  }
  else{count[j]=0}
  if(c[j]<d[j]){
    count1[j]=1
  }
  else{count1[j]=0}
}

sum(count)/n
sum(count1)/n

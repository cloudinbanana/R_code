###基础

help(scan)
methods(plot)
demo()
example(lm)

ctl <- c(4.17,5.58,5.18,6.11,4.50,4.61,5.17,4.53,5.33,5.14)
trt <- c(4.81,4.17,4.41,3.59,5.87,3.83,6.03,4.89,4.32,4.69)
group <- gl(2, 10, 20, labels = c("Ctl","Trt"))
weight <- c(ctl, trt)
lm.D9 <- lm(weight ~ group)
rm(list = ls())
sessionInfo()
paste(1:12) # 与as.character(1:12)等价
formatC(1/3, format = "f", digits= 4)

getwd()
setwd()

read.table(file = ,header = ,sep = )
read.csv(file = ,header = ,sep = )
readLines("http://www.163.com")



str(1+2i)
a=c(1,2,3,4,5);a
rep(2,4)
seq(1,20,2)
x=sequence(100)
seq(1,100,1)
x[c(1,4)]; 
x[x<40&x>10]


matrix(1:8,4,2,byrow = FALSE)
x=c(1:15);dim(x)=c(3,5)
x


province<-c("四川","湖南","江苏","四川","四川","四川","湖南","江苏","湖南","江苏")
factor(province)
levels(factor(province))  # Levels: 湖南 江苏四川
ordered(province)  # Levels: 湖南 < 江苏 < 四川



f=function(x){
  print(x)
}
f(a)
prod(x)

#文本函数
x1=readLines("http://www.163.com")
x1[grep("<html", x):3]

#
lower.tri(x, diag=T)
which(x>4&x<=10)
example(which)
a=rnorm(1000,0,1)
density(a)
plot(density(a))
plot(density(rpois(1200,0.2)))
plot(density(rbinom(1200,10,0.02)))
plot(density(runif(12000,-3,1)))
plot(density(rf(1200,10,20)))
plot(density(rt(1200,10)))


plot(hist(rf(1200,10,20)))
qqline(rbinom(1200,10,0.02))


#假设检验

var.test()

F检验, e.g. var.test(height~gender, data=UG)

t.test()

T检验, e.g. t.test(UG$weight, mu=170, alternative="less")

chisq.test()

卡方检验, e.g. chisq.test(f,p=prob)

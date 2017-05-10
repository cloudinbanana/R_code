###课堂代码
##exam4a 生成固定概率分布函数
n=1000
x=1:4
p=c(0.2,0.15,0.25,0.4)
X=sample(x,n,replace=T,p)
X=table(X)/n
X
##exam4b 生成1,2,...n的随机排列
perm = function(n)
  {x=1:n;k=n
     while (k>1)
     {
       u=runif(1);I=floor(k*u)+1;v=x[k]
       x[k]=x[I];x[I]=v;k=k-1
     }
  x
}
perm(100)
##exam4d生成计划随机变量
n=1000
p=0.2
u=runif(n)
x=floor(log(u)/log(1-p))+1
hist(x)
hist(rgeom(1000,0.2))

###homework
###Chapter4
###N0.2
n=100000
x=1:10
p=c(runif(length(x),0,1))   ###任意给定值得概率
p=p/sum(p)                  ###规范化
X=sample(x,n,replace=T,p)
p
table(X)/n
p-table(X)/n                ###误差在1/1000
###N0.5
perm2 = function(n)
{x=1:n
for(i in 1:n)
{
  u=runif(1);I=floor(i*u)+1;v=x[i]
  x[i]=x[I];x[I]=v
}
x
}
perm2(100)
###No.8
r=1000
tureout=sum(1:r)

n=50000
X=sample(1:r,n,replace=T)
X
p=table(X)/r

###No.11
n=1000
z=rnorm(n,0,1)
z2=sum(abs(z))
E=z2/n
E
###No.14

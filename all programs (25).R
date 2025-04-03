data<-c(1,2,3,4,5,6,7,8,9,10)
median<-median(data)
mean<-mean(data)
mode<-as.numeric(names(sort(table(data),decreasing = TRUE)[1]))
print(paste("median","mode","mean",mean,median,mode))

#min-max
data<-c(200,400,600,800,1000)
min_max<-(data-min(data))/(max(data)-min(data))
print(paste("min max:",min_max))

#z score
data<-c(200,400,600,800,1000)
z_score<-(data-mean(data))/sd(data)
print(paste("z-score",z_score))

#data binning
data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)
bins<-split(data,ceiling(seq_along(data)/5))
print(paste("binning",bins))

#smoothing data
data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)
bins<-split(data,ceiling(seq_along(data)/5))
smoothed_data<-unlist(lapply(bins,mean))
print(smoothed_data)

#histogram

data<-c(1,2,3,4,5)
hist(data,main="histogram:",col="blue")

#boxplot

data<-c(1,2,3,4,5)
boxplot(data,main="boxplot",col="blue")

#scatterplot

x<-c(1,2,3,4,5)
y<-c(2,4,6,8,10)
plot(x,y,main="scatterplot",col="blue",pch=19)

#correlation

x<-c(1,2,3,4,5)
y<-c(2,4,6,8,10)
correlation<-cor(x,y)
print(correlation)

#covariance

x<-c(1,2,3,4,5)
y<-c(2,4,6,8,10)
covariance<-cov(x,y)
print(covariance)

#equal width binning

data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)
bins<-cut(data,breaks = 5)
print(bins)

#equalfrequency binning

data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)
bins<-quantile(data,probs = seq(0,1,0.25))
print(cut(data,bins))

#k means binning

library(cluster)
data<-c(1,2,3,4,5,6,7,8,9,10)
km<-kmeans(data,5)
print(cut(data,km$centers))


#hierarchial binning

library(cluster)
data<-c(1,2,3,4,5,6,7,8,9,10)
hc<-hclust(dist(data))
print(cutree(hc,k=4))

#regression

x<-c(1,2,3,4,5)
y<-c(2,4,6,8,10)
model<-lm(y~x)
print(paste("regression:y=",model$coefficients[1],"+",model$coefficients[2],"*x"))


#data transformation

data<-c(1,2,3,4,5)
log_data<-log(data)
print(log_data)

#box plot comparision

data1<-c(1,2,3,4,5)
data2<-c(2,4,6,8,10)
boxplot(data1,data2,main="box plot comparision",col=c("blue","green"))

#histogram comparision


data1<-c(1,2,3,4,5)
data2<-c(2,4,6,8,10)
hist(data1,main="histogram comparision",col="blue",border="black")
hist(data2,add=TRUE,col="green",border="black")

#scatterplot with regression line

x<-c(1,2,3,4,5)
y<-c(2,4,6,8,10)
model<-lm(y~x)
plot(x,y,main="scatterplot with regression line")
abline(model,col="red")

#multiple scatter plots

x1<-c(1,2,3,4,5)
y1<-c(2,4,6,8,10)
x2<-c(2,4,6,8,10)
y2<-c(1,3,5,7,9)
plot(x1,y1,main="multiple scatter plots",col="blue",pch=19)
plot(x2,y2,col="green",pch=17)

#bar chart

data<-c(1,2,3,4,5)
barplot(data,main="bar chart",col="pink",border="black")

#piechart

data<-c(1,2,3,4,5)
pie(data,main="piechart",col=c("blue","green","yellow","pink","violet"))

# heat map

data<-matrix(c(10,20,30,40,50,60,70,80,90),nrow=3,ncol=3)
heatmap(data,main="heatmap",col="green")
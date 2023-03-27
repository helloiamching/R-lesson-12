par(mfrow=c(2,2))
# layout & par are similar
# they are used to arrange the space 
#in order to put lots grapgh in one picture
#EA
x=iris[,1]
mat1 <- matrix(c(1,2,1,2,1,3),2,3)
mat1 <- matrix(c(2,1,2,1,0,3),2,3)
layout(mat1)
plot(x)
hist(x)
boxplot(x)
#EB
install.packages("ggplot2")
library(ggplot2)
x=iris[,1]
y=iris[,2]
mat2 <- matrix(c(0,1,0,2,3,4,0,5,0),3,3)
layout(mat2)
boxplot(x)
hist(x)
plot(x)
boxplot(y,horizontal = TRUE)
qplot(y, geom="histogram",binwidth = 0.3) +coord_flip()

#EC
boxplot(count~spray, data=InsectSprays, col="lightgray")
mat3 <- cbind(iris$Petal.Length,iris$Petal.Width,iris$Sepal.Length,iris$Sepal.Width)
boxplot(mat3, data=iris, col="lightgray")

#ED
boxplot(iris$Sepal.Length~iris$Species)

#EE
mat4 <- cbind(iris$Sepal.Length,iris$Sepal.Width,iris$Petal.Length,iris$Petal.Width)
boxplot(mat4, data=iris, col="lightgray")

#EF
mat5 <- cbind(iris$Petal.Width,iris$Petal.Length,iris$Sepal.Width,iris$Sepal.Length)
boxplot(mat5, data=iris, col=c("red","lightgreen","green","purple"),horizontal = TRUE)


#package:RGOooglemap
install.packages("RgoogleMaps")
library("RgoogleMaps")

TaiwanMap1 <- GetMap(center=c(lat=23.58,lon=120.58),zoom=7,destfile="Taiwan1.png")
PlotOnStaticMap(TaiwanMap1)










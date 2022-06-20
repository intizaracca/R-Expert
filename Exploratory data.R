####Graphs##########
#compare to what
#### 6 principles#######
#### 1, Show comparisons.
####2, Show Causality, mechanism, explanation, systematic structure:
#### 3, Show multivariate data
#### 4, Integration of evidence
#### 5, Describe and document the evidence with appropriate lables,scales,source, etc:
#### 6, Content is king

### Exploratory Graph
### parameters are important and graph is based on it.
## 1 to understand data property
## 2 to find patterns of data
## 3 To suggest modeling strategies.
## 4 to "debug" analyses
## to communicate results.

### Characteristic of Exploratory graph
## they are quick
## A large number are made
## The goal is for personal understanding
## Axes/legends are generally cleaned up.
## Color / Size are primarily used for information.

# Air Pollution in US

getwd()
setwd("C:\\Users\\intiz\\OneDrive\\Documents\\R\\R-for Data Science\\Exploratory data")
pollution<-read.csv("./pollution.csv")
names(read.csv("pollution.csv"))
list.files("C:\\Users\\intiz\\OneDrive\\Documents\\R\\R-for Data Science\\Exploratory data")
head(pollution)
str(pollution)
date()

## Simple Summaries of Data ##
### One dimension graph
    ## 1 five number summary
    ## 2 Boxplots
    ## 3 Histograms
    ## 4 Density plots.
    ## 5 Bar Plot
### 5 number summary.[Min, 1st qu, Median, Mean, 3rd Qu, Max]
summary(pollution$Daily.Mean.PM2.5.Concentration)
### Box plot
boxplot(pollution$Daily.Mean.PM2.5.Concentration)
boxplot(pollution$Daily.Mean.PM2.5.Concentration, col = 'Blue')
### Histograms####
hist(pollution$Daily.Mean.PM2.5.Concentration, col = 'Green', breaks = 50)
rug(pollution$Daily.Mean.PM2.5.Concentration)
### Bar plots####
barplot(table(pollution$COUNTY), col = 'green', main = 'Pollution in County')
#### Overlaying Features###
boxplot(pollution$Daily.Mean.PM2.5.Concentration, col = 'green')
abline(v =12, lwd =2)
abline(v= median(pollution$pm25), col ='magenta',lwd =4)

### Multiple Box Plots#####
boxplot(Daily.Mean.PM2.5.Concentration~COUNTY, data = pollution, col = 'red')
abline(h = 13)
##### Scatter Plot - Using Color ####
par(mfrow = c(1,1), mar = c(4,4,2,1))
pollution$Date = as.Date(pollution$Date, '%m/%d/%Y')
with(pollution, plot(Date, Daily.Mean.PM2.5.Concentration))
abline(h =12, lwd=2,lty = 2)
par(mfrow = c(2, 1), mar = c(4, 4, 2, 1))
hist(subset(pollution, COUNTY == "Baldwin")$Daily.Mean.PM2.5.Concentration, col = "green")
hist(subset(pollution, COUNTY == "Etowah")$Daily.Mean.PM2.5.Concentration, col = "green")
### Plotting system###
#1. Base plotting system
#2. Lattace plotting system
#3. GGplot2 system

#Lattace Plot system
library(lattice)
library(datasets)
xyplot(Ozone ~ Wind, data = airquality)
# ggplot2 system##
library(ggplot2)
data(mpg)
qplot(displ,hwy, data = mpg)
##Ploting system
##Graph, grDevices, lattice , grid
## Arguments----> pch,lty,lwd,col,xlab,ylab
par('lty')
par('pch')
## Annotation Function----> plot,lines,points,text,title,mtext,axis
#The Lattice Plotting system
airquality<- transform(airquality, Month = factor(Month))
xyplot(Ozone ~ Wind | Month, data = airquality, layout = c(5,1))
#Laatice Panel Functions
set.seed(10)
x<-rnorm(100)
f<- rep(0:1, each =50)
y<- x+f-f*x+rnorm(100,sd=0.5)
f<-factor(f,labels=c('group 1','Group 2'))
xyplot(y~x|f, layout= c(2,1))
## Custom panel function
xyplot(y ~ x | f, panel = function(x, y, ...) {
  panel.xyplot(x, y, ...) ## First call the default panel function for 'xyplot’
  panel.abline(h = median(y), lty = 2) ## Add a horizontal line at the median
})
## Custom panel function
xyplot(y ~ x | f, panel = function(x, y, ...) {
  panel.xyplot(x, y, ...) ## First call default panel function
  panel.lmline(x, y, col = 2) ## Overlay a simple linear regression line
})

# 41 ggplot2
install.packages()
install.packages("ggplot2")
library(ggplot2)
### graph grammer####
str(mpg)
qplot(displ, hwy, data= mpg, color = drv)
qplot(displ, hwy, data= mpg, geom = c('point','smooth'))
qplot( hwy, data= mpg, fill = drv)
### Facets####
qplot(displ, hwy,data= mpg, facets = . ~ drv)

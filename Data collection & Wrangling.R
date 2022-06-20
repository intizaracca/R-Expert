
### Data download from website


fileURL<-"https://data.baltimorecity.gov/datasets/baltimore::baltimore-city-fy2022-budget-data/about"
download.file(fileURL,destfile = 'Budget.csv', method = "curl")

datedownload<- date()
datedownload
Budgetdata<-read.csv("Budget.csv")
str(Budgetdata)



##Read.table for reading the file
#important parameters file, header,separator,row.names,nrows.
c_camera<-read.csv("Cameras.csv")
# cdata<- read.table('Cameras.csv', sep = ',' header = TRUE)
head(c_camera)
cdata<-read.csv('cameras.csv')
cdata

# fread - Fast reading

library(data.table)
?fread

# read data from excel file
## 1.      intall.packages("xlsx") (Java required)

library('xlsx')
## 2.      install.packages('readxl') it is working

library('readxl')
readxl_example()
xlsx_example<-readxl_example('datasets.xlsx')
read_excel(xlsx_example)
head(xlsx_example)
getwd()
# writexl librabry installation
#devtools::install_github("ropensci/writexl") not working
install.packages('writexl')
library('writexl')
# convert csv file to excel
write_xlsx(cdata, 'cameras.xlsx')
read_xlsx('cameras.xlsx')

#### Web Scrapping ####

## Read HTML webpage

library(rvest)
theUrl<- 'https://en.wikipedia.org/wiki/Brazil_national_football_team'
file<- read_html(theUrl)

tables<-html_nodes(file, 'table')
table1 <- html_table(tables[4], fill = TRUE)
print(table1)
View(table1)

?html_text
 ###SQLite database
install.packages('RSQLite')
 #drv: and path
#Creating Database and tables
library(RSQLite)
data('mtcars')
mtcars$car_names <- rownames(mtcars)
rownames(mtcars) <- c()
head(mtcars) 
getwd()

### create or connect to database


conn<- dbConnect(RSQLite::SQLite(), 'CarsDB')
 ### write the mtcars into database
### connect_var, name  of table, value (data frame) and append can use for xpl tables
dbWriteTable(conn, 'cars_data', mtcars)
dbListTables(conn)
### Quick access
dbListFields(conn, 'cars_data')
rdd <- dbReadTable(conn, 'cars_data')
###Executing SQL Queries

install.packages('RMySQL')

## MySQL

##### rvest
library('rvest')
rl <- "https://en.wikipedia.org/wiki/List_of_bicycle-sharing_systems"
URL1<- read_html(rl)
tables1<-html_nodes(file, 'table')

getwd()
library("xlsx")
setwd("C:\\Users\\intiz\\OneDrive\\Documents\\R\\Datasets")  
camera98<- read.xlsx("abc.xlsx", sheetIndex = 1, header = TRUE)
View(camera98)
head(camera98)
tail(camera98)
length(camera98)
str(camera98)
max(camera98$b)
camera98$c
subset(camera98,b>=30)
library("readxl")
camera90<- read_excel("abc.xlsx")
camera90
x<-c(1,2,3,4,5,6)
for (i in 1:6) {
  print(x[i])
}
as.data.frame(1970-01-15)
as.date("1970-01-01")
########################## WEB SCRAPPING ######################
library(rvest)
The_URL<-"https://en.wikipedia.org/wiki/Brazil_national_football_team"
file256<- read_html(The_URL)
file256
Tables256<- html_nodes(file256,"table")
Tables256_4 <- html_table(Tables256[4], fill = TRUE)
Tables256_2 <- html_table(Tables256[2], fill = TRUE)
Tables256_50 <- html_table(Tables256[50], fill = TRUE)
print(Tables256_50)
library(dplyr)
imdb<-"https://www.imdb.com/chart/top?pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=470df400-70d9-4f35-bb05-8646a1195842&pf_rd_r=94TPAW7RKHHRQ6VSVZG3&pf_rd_s=right-4&pf_rd_t=15506&pf_rd_i=moviemeter&ref_=chtmvm_ql_3"
film<- read_html(imdb)
Names<- film %>% html_nodes(".titleColumn a")%>% html_text()
Names
github<- "https://github.com/"
github_web<-read_html(github)
print(github_web)
github_web %>% html_node("head") %>% html_text()
github_web %>% html_node("body") %>% html_text()
github_web %>% html_node("script") %>% html_text()
github_web %>% html_node("p") %>% html_text()
github_web %>% html_node("h1") %>% html_text()
github_web %>% html_node("a") %>% html_text("skip")

############### DB
library(RSQLite)
data("mtcars")
mtcars


#################### data.table################
library(data.table)
das<- data.frame(x=rnorm(9), y=rep(c("a","b","c"), each=3),z=rnorm(9))
das
head(das, 4)
das1<- data.table(x=rnorm(9), y=rep(c("a","b","c"), each=3),z=rnorm(9))
das1
tables()

####47 calculate value

das1[,list(mean(x),sum(z),mode(y))]
das1[,w:=z^2]
das1
das1[,a:=x>0]
das1
######48 merging of tables
das1<-data.table(x=c('a','b','c','dtl'),y=1:4)
das2<-data.table(x=c('a','b','c','dt2'),z=5:7)
setkey(das1,x); setkey(das2,x)
merge(das1,das2)
das1
das2
########## 49 ##########
getwd()
setwd("C:\\Users\\intiz\\OneDrive\\Documents\\R\\Datasets")
library()
cars<- read.csv("cars.csv")
cares<-data.table::fsort(cars$Make)
cares
#######  50 ####### subsetting and sorting
set.seed(150)
x<- data.frame("var1"=sample(1:5),"var2"=sample(6:10),"var3"=sample(11:15))
x
x<-x[sample(1:5),];x$var2[c(1,3)]=NA
x
x[,1]
x[,"var1"]
x[1:2,"var2"]
x[(x$var1<=3 & x$var3>11),]
sort(x$var1,decreasing = FALSE, na.last = TRUE)
x[order(x$var1),]
x[order(x$var1,x$var2),]
####### 54############ Important
is.na(x)
which(is.na(x))
sum(is.na(x))
colSums(is.na(x))
dataset::airquality
### 60 split

and apply####
library(datasets)
head(InsectSprays)
tapply(InsectSprays$count,InsectSprays$spray,sum)
InsectSprays
SP<-split(InsectSprays$count,InsectSprays$spray)
SP
SPCount<- lapply(SP,sum)
SPCount
unlist(SPCount)
sapply(SPCount,sum)
###### 60 merge #######
Activity<- data.frame(ID=c(01,02,03,04,05,06,07),units=c(23,43,21,32,13,12,32))
names<-data.frame(operator=c("Larry","Curly","moon","Jack","Kill","Perry","Kitty"))
Merge_AC<-cbind(Activity,names)
Merge_AC
###### 62 types of merge
### natural join, full outer join, left outer join, right outer join 
library(datasets)
x1<- data.frame(LETTERS,Xindex=1:26)
x1
y1<-data.frame(letters, Xindex= c(1:10,15,20,22:35))
y1
merge(x1,y1)
merge(x1,y1, all=TRUE)
names(x1)<- c("alpha","lotnumber")
x1
merge(x1,y1, by.x = "lotnumber", by.y="Xindex")
merge(x1,y1, by.x = "lotnumber", by.y="Xindex", all=TRUE)
##### 65 Tidyverse############
install.packages("tidyverse")
msleep<- read.csv("msleep.csv")
head(msleep)
library(tidyverse)
data.frame(msleep)
sleeptime<- select(msleep,ï..name,sleep_total)
head(sleeptime)
filter(msleep, order == "carnivora")
group<- group_by(msleep, genus)
group
levels(group$genus)
mutate(msleep, name2= sleep_total*2)
#########  68 Dplyr###########

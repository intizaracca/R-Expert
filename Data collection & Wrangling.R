
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


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
#devtools::install_github("ropensci/writexl")
install.packages('writexl')
library('writexl')
# convert csv file tof excel
write_xlsx(cdata, 'cameras.xlsx')
read_xlsx('cameras.xlsx')

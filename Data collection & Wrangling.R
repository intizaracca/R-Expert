
### Data download from website


fileURL<-"https://data.baltimorecity.gov/datasets/baltimore::baltimore-city-fy2022-budget-data/about"
download.file(fileURL,destfile = 'Budget.csv', method = "curl")

datedownload<- date()
datedownload
Budgetdata<-read.csv("Budget.csv")
str(Budgetdata)

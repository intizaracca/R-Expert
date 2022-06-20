BAlti<-"https://data.baltimorecity.gov/datasets/baltimore::baltimore-city-fy2022-budget-data/explore/rows.csv?accessType=DOWNLOAD"
download.file(BAlti, destfile = "Budget1.csv", method = "curl")
names(read.csv("Budget.csv"))
head(read.csv("Budget.csv"))

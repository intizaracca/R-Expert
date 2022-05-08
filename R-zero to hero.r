# from different resources for data science
print('Hello')
# for loop it is used to repeat the values
for (year in 1:10) {
  print(year)
}
for (y in 1:10) {
  print(paste('number: ',y))
}
f<-c('Orange','apple','banana','mango')
for(i in f) {
  print(f)
}
# repeat loop no need to specify condition
# use break key word for leave out the cmd

v<-c('hello','how','are','you')
x<-3
repeat{
  print(v)
  x<-x+1
  if(x>7){
    break
  }
}
v<-c('hello','how','are','you')
x<-1
repeat{
  print(v)
  x<-x+1
  if(x>7){
    break
  }
}
f<-c('Orange','apple','banana','mango')
for(i in f) {
  print(f)
}
# While loop
v<-c('hello','r','programming','language')
x<-2
while(x<6){
  print(v)
  x<-x+1
}
v<-c('hello','r','programming','language')
x<-2
while(x<15){
  print(v)
  x<-x+2
}
# Take input from user
name<- 'intizar'
age<-'34'
name<-readline(prompt = 'Enter my name: ')
age<-readline(prompt = 'Enter ur age: ')
print(paste('hello my name is:', 'and my age is :',age))

age<-'34'

print(paste('hello my name is:',name, 'and my age is :',age))
paste('hello','233','ram',sep = '_')
paste('hello','233','ram',sep = ' ')
paste0('hello','233','ram')

today<- date()
today
# 17 Functions user define and built-in
#y<- function(arg1,arg2,arg3,....){function body}
##  name, arguments,body, return value

new.function<- function(){
  for (i in 1:5){
    print(i^2)
  }
}
new.function()

new.fun<- function(x,y,z){
  Num<- x+y+z
  print(Num)
}
new.fun(1,2,3)



new_Fun<-function(x=10,y=20){
  res<-x*y
  print(res)
}
new_Fun()

new_Fun<-function(x=10,y=20){
  res<-x*y
  print(res)
}
new_Fun(5,6) # new arguments and now x=10 and y=20 will not work

# Built-in Function
x<--5
print(abs(x))

print(sqrt(4))

x<- 5.6
print(ceiling(x))

y<- c(1.5,2.5,3.6,7.2)
print(trunc(y))

z<-5
print(sin(z))

print(log(z))
print(exp(z))

# String function

a<-'1231545864'
substr(a,3,8)
S1<-' noor Ali'
print(tolower(S1))
print(toupper(S1))
tolower(S1)
s2<-c('abcd','bcbd','abcdbcbd')
pat<-'^abc'
print(grep(pat,s2))

s2<-c('abcd','bcbd','abcdbcbd')
print(grep('abc',s2))

# 19 data structures (to store data)
## vectors,Matrix,Array,List,Data frame
# all the elements of vectores are components
# len() find the no of elements in a vector
# atomic vector and list

a<-c(3,4,5,1,5,8)
a
b<-3:8
b
sq<-seq(1,6)
sq
sq<-seq(1,13, by=2)
sq
sq1<-seq(1,4,length.out = 6)
sq1
# access of vector by indexing start from 1 not from 0
sq[2]
# List
vec<-c(8,9,4,7)
char_vec<- c('Ali','Noor','Abubakar','Usman')
logic_vec<- c(TRUE,FALSE,TRUE,FALSE)
list1<- list(vec,char_vec,logic_vec)
list1

list3<- list(c('Ali','Arham'),c(2,3),list('batch','Tach'))
list3
# Naming of list
names(list3)<-c('Student','No','Course')
list3
# Accessing list
print(list3[1])
list3[2]
list3['No']
list3$Course 

# Convert list into vector by unlist()
list4<- list(5:10)
list5<- list(4:19)
class(list5)
v1<-unlist(list4)
list4
class(v1)
nex<-c(list4,list5)
nex
class(nex)
# R Vector Function
#rep() it is replicating sequence
rep(c(2,3,4),time=5)
rep(c(3,5,8),each=2)
rep(c(0,8),time=c(3,4))
rep(1:4,length.out=9)
# seq() it will not repeat objects
seq(from=3.5,to=5.5,by = .5)
seq(from=-2.7,to=1.5,length.out=8)
#any() and all() function
x<-1:10
x
any(x>5)
any(x>15)
all(x>5)
all(x==5)
# Arrays are data objects which allow us to store data in more than 2 dimension
#array() (2,3,4)
v1<-c(1,4,5,6)
v2<-c(10,20,30,40,50,60,70)

v3<- array(c(v1,v2 ), dim = c(3,3,4))

v3
#name of rows,column and matrix

c_name<-c('c1','c2','c3')
r_name<-c('r1','r2','r3')
m_name<-c('mat1','mat2','mat3','mat4')
v3<-array(c(v1,v2),dim=c(3,3,4),dimnames = list(r_name,c_name,m_name))
v3

#access the matrix

print(v3[3,,2])
print(v3[3,2,2])
print(v3[3,,3])
print(v3[1,,4])
print(v3[,2,2])
print(v3[,,2]) 
print(v3[,,4])
#Manipulation of array MORE THAN ONE DIMENSION
v4<-c(1,8,5,9)
v5<-c(1,2,3,4,5,6,7)

v6<- array(c(v4,v5 ), dim = c(3,3,4))

v6

v7<-v3+v6
print(v7)
#R Matrix
mat<-matrix(c(2:13),nrow = 4, ncol = 4,byrow = TRUE)
mat
mat1<-matrix(c(2:15),nrow = 4,byrow = FALSE)
mat1
############## Data Frame ############
#######################################

emp.data<-data.frame(
  emp_id = c(1:10),
  Emp_name= c('Ali','Arham','Abdullah','Akram','Riaz','Noor','Basheer','Khan','Paan','LOLipop'),
  Sal = c(500,333,444,585,254,212,665,888,666,850),
  Join_date = as.Date(c('2012-01-10','2013-09-23','2014-01-01','2015-01-01','2012-01-01','2013-09-23','2014-01-02','2015-01-01','2010-01-01','2019-01-02')),
  
  stringsAsFactors = FALSE
)

print(emp.data)
###Structure of data

str(emp.data)

#Retrieve some columns and rows

F1<- data.frame(emp.data$Emp_name,emp.data$Sal)
F1

# Find column with index

F2<- emp.data[3]
F2

F3<- emp.data[2:4]
F3
#Rows
F4<-emp.data[c(2,3),c(1,4)]
F4
F5<-emp.data[3,]
F5
# 2nd row 3 column a particular data
F6<-emp.data[2,3]
F6
# complete set of rows and columns
F7<- emp.data[c(2,3)]
F7
# Add columns and rows
#cbind(), rbind()

xy<-list(11,'Fateh',700,'2014-01-08')
emp.data<-rbind(emp.data,xy)

yx<- c('fsd','fsd','fsd','fsd','fsd','fsd','fsd','fsd','fsd','fsd','fsd')
emp.data<-cbind(emp.data, City = yx)
emp.data
 #Delete row and column
emp.data[-4]
emp.data$City<-NULL
emp.dfaata
#### Factor in R

dir<- c("north","west","east","south")
is.factor(dir)
factor(dir)
factor(dir,levels = c("north","west","east","south"),labels = c("n","w","e","s"))
 ## Import CSV file
## getwd() wd
getwd()
v<- c(12, 34, 56, 32, 68, 88, 24)
sort(v)
sort(v, decreasing = T)
order(v)
v[order(v)]
rank(v) ## indexing
setwd("C:\\Users\\intiz\\OneDrive\\Documents\\R\\Datasets")
getwd()
Fifa <- read.csv("fifa.csv")
View(Fifa)
print(is.data.frame(Fifa))
print(ncol(Fifa))
print(nrow(Fifa))
FIFA2 <-read.table(file="C:\\Users\\intiz\\OneDrive\\Documents\\R\\Datasets\\fifa.csv",header = T, sep = ",")
FIFA2
FIFA2<-read.csv("C:\\Users\\intiz\\OneDrive\\Documents\\R\\Datasets\\fifa.csv")
View(FIFA2)
str(FIFA2) # structure of data fram
Summary(FIFA2)
names(FIFA2)
head(FIFA2)
length(FIFA2)
D1<- FIFA2$dob
D1
max_val<- max(FIFA2$value_eur)
max_val
min(FIFA2$value_eur)
detail<- subset(FIFA2, value_eur==max(value_eur))
detail
details<-subset(FIFA2,league_name = "French Ligue 1")
details
detai<-subset(FIFA2,league_name == "French Ligue 1"&value_eur>63500000)
detai
### write.csv for add something in csv file ###
#### Excel file
getwd()
setwd("C:\\Users\\intiz\\OneDrive\\Documents\\R\\Datasets")
library("xlsx")
getwd()
hwo<- read.xlsx("abc.xlsx", sheetIndex = 1 , header = TRUE)
hwooo<- read.xlsx("abc.xlsx", sheetIndex = 1, header = TRUE)
hwo
view(hwo)
print(hwo)
summary(hwo)
### dplyr package
library("dplyr")
head("FIFA2")
select(FIFA2, -age)
names(FIFA2)
head(select(FIFA2, age, weight_kg))
head(select(FIFA2, starts_with("me")))
filter(FIFA2, age>30)
select(filter(FIFA2,age>=30))
library("magrittr") ### PIPE function to join the function
FIFA2%>% select(age) %>% filter(age>30) %>% head   

###mutate for adding column

library("xlsx")
names(FIFA2)
FIFA3<-FIFA2 %>% mutate(my_age = age+10) %>% head
names(FIFA3)
View(FIFA3)
### Group by
nife<- group_by(FIFA3, age)
nife2<-FIFA2 %>% group_by(short_name)
####### Data importing from relational database
library("RMySQL")
con<- dbConnect(MySQL(),
                username = "root",
                password = "admin",
                host = "localhost",
                port = 3306,
                dbname = "student"
)
con<- dbConnect(MySQL(),
                username = "root",
                dbname = "student"
)
dbListTables(con)
dbListFields(con, "personal")
data4<- dbGetQuery(con,"select* from personal")
data4
rs<-dbSendQuery(con, "select * from personal")
rs
darasnd<-fetch(rs, n = 4)
View(darasnd)
fetch(rs, n = -1) ### for complete table
########### BAR CHART #############
gig<- c(25,30,35,58,45)
barplot(gig)
H2<- c(12,35,54,31,42)
M2<-c("feb","Mar","Apr","May","Jun")
barplot(H2,names.arg = M2,xlab = "Month",ylab = "Revenue",col = "red",
        main = "Revenue Bar Chart",border = "Black")
Months<- c("feb","Mar","Apr","May","Jun")
regions<-c("Punjab","Sind","KPK")
values<- matrix(c(12,32,65,84,78,45,2,45,88,69,15,2,21,85,58), nrow = 3, ncol = 5, byrow = TRUE)
barplot(values, names.arg = Months, xlab = "Month", ylab = "Revenue",col = c("red","blue","green"), main = "Total Revenue")
legend("topright",regions,cex = .5,fill = c("red","blue","green"))
###### PIE Chart#########
x <-c(12,35,56,75)
labels <- c("Pak","UK","Japan","USA")
pie(x,labels)
pie(x,labels,main="country Pie Chart",col=rainbow(length(x)))
color <- c("blue","purple","red","green")
pie(x,labels,main = "Country Pie Chart",col = color)

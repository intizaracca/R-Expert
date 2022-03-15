# from different resources for data science
print('Hello')
# for loop it isused to repeate the values
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

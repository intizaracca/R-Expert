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

name<- 'intizar'
age<-'34'

print(paste('hello my name is:',name, 'and my age is :',age))
paste('hello','233','ram',sep = '_')
paste('hello','233','ram',sep = ' ')
paste0('hello','233','ram')

number <- 5+7 # <- can be replaced by '=', but <- is more readable 
number*2

#vectors
#vectors store multiple entries of a data type; allows us not to have to create a variable for each new number
times<-c(60, 40, 33, 15, 20, 55, 35)

times_hour<-times/60
times_hour

#functions
mean(times)
range(times)
sqrt(times)

times<30
times==20
times!=20
times>20 & times<50
times<20 | times>50

which(times<30)
any(times<30)
all(times<30)

#subsetting
times[3]
times[-3]
times[c(2,4)] #If you don't use the c, R will treat (2,4) as a matrix | R is looking for a set of vectors to return
times[c(4,2)]
times[2:5]
times[times<30]

times[c(1,3)]<-c(47,26)
times[times>45] <-45 #capping entries that are too large; replacing objects in a vector 
times<-times[-4] #removing an entry by overwriting times
length(times) #counting the no. of values in a vector
times[7]<-NA
mean(times) #when you have a NA, the mean becomes NA

#access the documentation of mean() function
?mean
mean(times, na.rm=TRUE) #mean(times, 0, TRUE) works as well but without naming the argument you need to ensure that it's in order

#data frames
mtcars
head(mtcars)
tail(mtcars)
str(mtcars)
nrow(mtcars)
ncol(mtcars)
summary(mtcars)
row.names(mtcars)
names(mtcars)
names(mtcars[1]) #extracting the first col name
which(names(mtcars)=="wt") #identifying which col no. is named "wt"
mtcars$cyl #extractng the cyl column 

mtcars$mpg
mean(mtcars$mpg)






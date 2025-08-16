#objects in R can have many names except numbers
1 <- 200
joy <- 200
joy_1 <- 200

#to assign use alt+-
<- 

#R has help function where you precede your question with a ?
?truncate() 
#check if we have a truncating function

#data types in R - 5 types
#doubles,integers, complex, character, logical

#doubles - numeric data that has decimals, e.g weight, height
doubles_1 <- c(25.2, 10.5, 60.3)

#2. integer = numeric data with no decimals

interger_1 <- c(10L, 20L)

#we can use typeof() to check the data type
typeof(doubles_1)

#3. complex - is a number that has an imaginary part (i = sqr(-1))
complex_1 <- 9+3i

#4. character /string - this is data in text form, we use "" to write
string_1 <- c("hello, world")
typeof(string_1)

#to find out if you have a specific character in a sequence of characters
grepl("h", string_1)
grepl("x", string_1)

#to combine two strings / character we use paste()
string_2 <- c ("here", "we", "are")

paste(string_1, string_2)

#4. Boolean/logical
#You input an expression then r computes and returns either TRUE or FALSE
#if the expression is true or not true respectively

10 > 9
10 < 9

#simple maths
#1. addition (+)
10 + 9

#2. subtraction (-)
10 - 9

#3. multiplication (*)
10 * 9

#4. division (/)
10/9

#5. Exponent (^ or **)
10**3
10^3

#6. Modulus- gives the reminder of a division (%%)
10%%3

#7. integer division (round up) (%/%)
10 %/% 3

#Data structures - they are used to store and organize data in R
#1. Factors - used to create store and organize categorical data
#categorical data could be e.g. Male/Female

factor_1 <- factor(c("male", "female"))

#to check the type of data structure, we use class()
class(factor_1)

#converting any other data structure into a factor using as.factor()
x1 <- c("male", "female")

x2 <- as.factor(x1)
class(x2)

#2. Vector - list of items that are of the same data type
#we use c(), we separate using ,
x3 <- c(1, 2, 3, 4, 4)
x4 <- 1:20
x5 <- rep(1:3, each = 3)
x6 <- rep(1:3, times =3)
x7 <- seq(1,16, by =4) #skips after every 4

#to get the number of items in a vector, we use length()
length(x7)
length(x6)

#to confirm if a specific item is in a vector, we use %in%
#to confirm item 10 in vector x4
10 %in% x4

#to access an item, we use []
x4[10]

#to access the third and 4th item, we use [c()]
x4[c(5,15)]

#3. Lists - just like a vector but it contains different data types
#we use list() to create
x8 <-  list("apple", "mango", 1:10)

#we use the same functions to access or confirm items in a list as those of the vector
x8[mango]

#we can combine vectors into a single list
x9 <- list(x5, x6, x8)

#4. matrix - two dimensional data that has rows and columns
#we use matrix() to create
#create a matrix using vector x4
x10 <- matrix(x4, nrow = 5, ncol = 2)

#we can access items in a matrix using []
x10[1, ] #row
x10[,1] #column

#access first row, 2nd column
x10[1,2]

#access more than one row
x10[c(1,2), ] #access row1 and row2

#access more than one column
x11[, c(1, 3)] #access col1 and col2

#we can add a row or a column using rbind and cbind respectively
#the items we are adding have to be of the same length
x11 <-  matrix(c(1:6), nrow = 2, ncol = 3)

#add a column in x11 - 3 columns
x12 <- c(6,7)

x13 <-  cbind(x11, x12) #add the vector as a column

x14 <- c(1:3)

x15 <- rbind(x11, x14)

# Data frames - 2 dimension data, displayed in a table
#can have different data types, but each column has to have the same data type
#we use data.frame()
x16 <- data.frame(
  training = c(1,2,3,4),
  strength = c("good", "better", "best", "bright"),
  duration = c(5,7,10,15)
)

length(x16) #number of columns

#access an item we use [ ] or $
x16["training"]

x16$training

summary(x16)

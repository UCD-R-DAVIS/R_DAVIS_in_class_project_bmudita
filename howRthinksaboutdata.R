# vectors ----
weight_g<-c(50,60,70,80,90)
weight_one_value<-c(50)

animals <- c("mouse", "dog", "cat", "zebra")

# inspection ----
length(weight_g)
str(weight_g)

#: suggest a range

# change vectors
weight_g <- c(weight_g, 95)
?c
weight_g

#challenge
num_char <- c(1,2,3,"a")
# vectors have to be the SAME class of values. this turned all of the numbers into characters instead of numbers.
num_logical <- c(1,2,3,TRUE)
# coerces values to be all the same, e.g. when TRUE is included
char_logical <- c("a", "b", "c", TRUE)
tricky <- c(1,2,3,"4")
combined_logical <- c(num_logical, char_logical)
num_logical <- c(1,2,3,FALSE)

# subsetting ----
animals <- c("mouse", "rat", "dog", "cat")
animals[4] #to find the specific piece of data in the vector
animals[c(2,3)] #to find multiple pieces of data in the vector

## conditional subsetting ----
weight_g <- c(21,34,39,54,55)
weight_g > 50
weight_g[weight_g > 50]

## symbols to set conditional subsets ----
# %in% means within
animals %in% c("mouse", "cat", "duck", "goat")

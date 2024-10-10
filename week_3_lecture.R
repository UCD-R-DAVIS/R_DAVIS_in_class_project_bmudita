#is.na is more of a logical function
#is.na can be more specific
#na.omit actually removes the terms

# other data types ----
## Lists ----
c(4, 6, "dog")
a <- list(4, 6, "dog")
class(a)
str(a)

# data.frames ----
letters
data.frame(letters) #turns the data into a column
df <- data.frame(letters)
as.data.frame(t(df)) #turns things into a matrix
length(df)
dim(df) #more specific than length, rows, columns
nrow(df)
ncol(df)

#factors ----
##character values with some sort of order to them
animals <- factor(c("mouse", "dogs", "cat", "goose")) #if not specified, the factor will be in alphabetical order
animals
class(animals)
levels(animals)
nlevels(animals)

#changing the order of a factor
animals <- factor(x = animals, levels = c("cat", "goose", "mouse", "dogs"))
animals

year <- factor(c(1978, 1980, 1934, 1979))
year
class(year)
as.numeric(year) #converts the factor into numeric
levels(year)

as.character(animals)

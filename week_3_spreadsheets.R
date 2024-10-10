file_loc <- 'data/portal_data_joined.csv' #press apostrophe and then press tab to find file locations
surveys <- read.csv(file_loc)
str(surveys)
summary(surveys)
summary(surveys$record_id)

#a data fram is just a bunch of vectors put together

surveys[1:5,] #don't forget to add the , which is what makes it so that it only shows the first 5 rows
surveys[1,5] #pulls from 1st column, 5th row
surveys[c(1,5,23,50),] #can show data from specific rows
surveys[,1] #only the first column
surveys[1,] #only the first row
head(surveys, 1)
surveys[c('record_id', 'year', 'day')]
dim(surveys[c('record_id', 'year', 'day')])

cols_to_grab = c('record_id', 'year', 'day')
cols_to_grab

head(surveys, n = 1) #gives the first row
tail(surveys) #prints out the bottom 6 rows
head(surveys[["genus"]]) #a way of getting into the internal object living in the bigger object. grabbing the vector from within
head(surveys["genus"]) #just pulling the data regularly

surveys$record_id #$ will print out the vector. only works one at a time
surveys$species_id

install.packages('tidyverse') #tidyverse just makes things more tidy
library(tidyverse)

t_surveys <- read_csv(file_loc)
class(t_surveys)
t_surveys

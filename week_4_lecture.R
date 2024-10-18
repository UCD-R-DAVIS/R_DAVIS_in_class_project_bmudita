#to load the package type:
library(tidyverse)
surveys <- read.csv('data/portal_data_joined.csv')

#select columns
month_day_year <- select(surveys, month, day, year)

#filtering by equals
year_1981 <- filter(surveys, year == 1981) #only want samples from 1981
sum(year_1981 != 1981, na.rm = T)


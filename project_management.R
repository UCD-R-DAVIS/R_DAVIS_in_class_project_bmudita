#working directory - tells R where we're working from
getwd()
"/Users/baramudita/Documents/R-Projects/R_DAVIS_in_class_project_bmudita"
setwd() #to change working directory. have to specify where to change WD to.

d <- read.csv("./data/tail_length.csv")

#code and data organization
#dir.create("./scripts") #to create a new folder
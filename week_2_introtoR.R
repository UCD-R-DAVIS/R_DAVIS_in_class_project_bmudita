3 + 4
2 * 5
4+3*3^2
#mathematical functions
exp(1)
exp(17)
log(17)
#r help files
?log
log(2,4)
log(4,2)
log(x=2,base=4)
#variables
x<-3
x
rm(x)
car <- 14

#nested functions
sqrt(exp(4))
log(exp(100))

#six comparison functions
mynumber<-6
mynumber == 5 #2 equal signs to ask if it's equal. one equal sign is a possible way of assigning a variable
mynumber #tab completions
#packages: individual sets of code that other people have developed.

mynumber != 5 #to see if it's different from a number
mynumber>4
mynumber<4
mynumber>=2
mynumber<=3

mynumber <- 7 #overwrites mynumber
othernumber<-3
mynumber*othernumber

#object name conventions
numSamples<- 50
num_samples<-40
rm(list=ls()) #to remove all values in global environment
?ls

ls()

#errors and warnings
log("a_word")
log_of_word<-log("a_word")
log_of_word

log_of_negative<-log(-2)

#challenge
elephant1_kg <- 3492
elephant2_lb <- 7757

elephant1_lb <- elephant1_kg*2.2
elephant2_lb > elephant1_lb


myelephants <- c(elephant1_lb, elephant2_lb)
myelephants
which(myelephants == max(myelephants))

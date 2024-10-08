set.seed(15)
hw2<-runif(50,4,50)
hw2<-replace(hw2, c(4,12,22,27), NA)
hw2
(is.na(hw2)) #is.na means it's asking is a value NA? it returns T/F, F meaning the value is not NA
!is.na(hw2) #also gets T/F answers, the ! is asking which values are not NA, so number = TRUE
probl <- hw2[!is.na(hw2)] #added hw2 in front so that it comes back as numbers and not T/F, removes the NAs
probl <- probl[probl >= 14 & probl <= 38] #used & to specify I want all numbers in between the two numbers
times3 <- probl * 3
plus10 <- times3 + 10
final <- plus10[c(1,3,5,7,9,11,13,15,17,19,21,23)]
final

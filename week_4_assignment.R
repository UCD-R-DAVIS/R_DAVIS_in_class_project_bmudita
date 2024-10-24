surveys <- read_csv("data/portal_data_joined.csv")
str(surveys)
filter(surveys, weight >= 30 & weight <= 60)
filtered_surveys <- filter(surveys, weight >= 30 & weight <= 60)
print(head(filtered_surveys, 6))
biggest_critters <- surveys %>% 
  filter(!is.na(weight)) %>% 
  group_by(species, sex) %>% 
  summarise(max_weight = max(weight))
surveys %>%
  filter(is.na(weight)) %>% #keeps only rows with NA
  group_by(species) %>%
  tally() #counts the number of NAs
surveys_avg_weight <- surveys %>%
  filter(!is.na(weight))%>%
  group_by(species, sex) %>%
  mutate(avg_weight = mean(weight)) %>% #creates a new column
  select(species, sex, weight, avg_weight)
surveys_above_avg_weight <- surveys_avg_weight %>%
  mutate(above_average = weight > avg_weight) #creates a new column
surveys_above_avg_weight

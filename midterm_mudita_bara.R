library(tidyverse)

url <- 'https://raw.githubusercontent.com/ucd-cepb/R-DAVIS/refs/heads/main/data/tyler_activity_laps_10-24.csv'
tyler_activity <- read.csv(url)
tyler_activity

running_activity <- tyler_activity %>%
  filter(sport == 'running')
running_activity

strictly_running <- running_activity %>%
  filter(minutes_per_mile > 5) %>%
  filter(minutes_per_mile < 10) %>%
  filter(total_elapsed_time_s > 60) %>% 
  mutate(pace = case_when(
  minutes_per_mile < 6 ~ 'fast', 
  minutes_per_mile >= 6 ~ 'medium',
  minutes_per_mile <= 8 ~ 'medium',
  TRUE ~ 'slow')) %>%
  mutate(form = case_when(
  year == 2024 ~ 'new',
  TRUE ~ 'old'))
  
strictly_running %>%
  group_by(form, pace) %>%
  summarize(avg_steps_per_minute = mean(steps_per_minute))



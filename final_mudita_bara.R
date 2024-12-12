library(tidyverse)
library(lubridate)

data <- read_csv("https://raw.githubusercontent.com/UCD-R-DAVIS/R-DAVIS/refs/heads/main/data/tyler_activity_laps_12-6.csv")

running_data <- data %>%
  filter(sport == "Running")

running_data <- running_data %>%
  filter(
    minutes_per_mile <= 10 & minutes_per_mile >= 5,
    total_elapsed_time_s >= 60
  )

running_data

running_data <- running_data %>%
  mutate(date = as.Date(paste(year, month, day, sep = "-")))

running_data <- running_data %>%
  mutate(date = as.Date(date))

running_data <- running_data %>%
  mutate(
    time_period = case_when(
      date < as.Date("2024-01-01") ~ "Pre-2024",
      date >= as.Date("2024-01-01") & date < as.Date("2024-07-01") ~ "Rehab Jan-Jun",
      date >= as.Date("2024-07-01") ~ "Post-July 2024"
    )
  )

running_data <- running_data %>%
  mutate(speed = (total_distance_m / 1609.34) / (total_elapsed_time_s / 3600))

spm_speed_plot <- running_data %>%
  ggplot(aes(x = speed, y = steps_per_minute, color = total_elapsed_time_s)) +
  geom_point(alpha = 0.7) +
  geom_smooth(method = "lm", se = FALSE) +
  theme_minimal() +
  labs(
    title = "Steps Per Minute (SPM) vs Speed by Lap",
    x = "Speed (miles per hour)",
    y = "Steps Per Minute (SPM)",
    color = "Time Period"
  ) +
  scale_color_brewer(palette = "Set1") +
  theme(
    plot.title = element_text(hjust = 0.5),
    axis.text = element_text(size = 12),
    axis.title = element_text(size = 14),
    legend.position = "bottom"
  )

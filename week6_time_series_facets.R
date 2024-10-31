library(tidyverse)

surveys_complete <- read_csv('data/portal_data_joined.csv') %>%
  filter(complete.cases(.))

# these are two different ways of doing the same thing
head(surveys_complete %>% count(year,species_id))
head(surveys_complete %>% group_by(year,species_id) %>% tally())

yearly_counts <- surveys_complete %>% count(year,species_id)

head(yearly_counts)

ggplot(data = yearly_counts,mapping = aes(x = year, y = n)) +
  geom_point()

ggplot(data = yearly_counts,mapping = aes(x = year, y= n)) +
  geom_line()

ggplot(data = yearly_counts,mapping = aes(x = year, y= n,group = species_id)) +
  geom_line()


ggplot(data = yearly_counts,mapping = aes(x = year, y= n, colour = species_id)) +
  geom_line()


ggplot(data = yearly_counts, mapping = aes(x = year, y = n)) +
  geom_line() +
  facet_wrap(~ species_id)


ggplot(data = yearly_counts, mapping = aes(x = year, y = n)) +
  geom_line() +
  facet_wrap(~ species_id,scales = 'free') +
  theme_bw()

library(ggthemes)
library(tigris)
library(sf)

ca_counties = tigris::counties(state = 'CA', class='sf')

ca_counties
ggplot(data = ca_counties) + geom_sf(aes(fill = ALAND))

mt_counties = tigris::counties(state = 'MT', class = 'sf')
mt_counties
ggplot(data = mt_counties) + geom_sf(aes(fill = ALAND))


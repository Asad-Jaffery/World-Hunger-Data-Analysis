# Libraries
library("dplyr")
library("tidyr")
library("ggplot2")

# Load dataset
country_wide_average <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-AsadJafferyy/main/data/country-wide-average.csv")

# Wrangle dataset
country_wide_average <- country_wide_average %>% 
  select(Country, Underweight) 

# Create bar graph
ggplot(country_wide_average) +
  geom_col(mapping = aes(x = Country, y = Underweight))

ggplot(country_wide_average) +
  geom_col(
    mapping = aes(x = Country, y = Underweight), position = "fill"
  )

ggplot(country_wide_average) +
  geom_col(
    mapping = aes(x = Country, y = Underweight), position = "dodge"
  )

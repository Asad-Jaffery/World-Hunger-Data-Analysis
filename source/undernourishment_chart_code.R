# Prevalence of Undernourishment by Country 
library(tidyverse)
library(dplyr)
library(ggplot2)


# Load dataset
undernourishment_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-AsadJafferyy/main/data/prevalence-of-undernourishment.csv")

# Edit column names
colnames(undernourishment_data)[4] = "Prevalence_of_Undernourishment"
colnames(undernourishment_data)[1] = "Country"

# Function 1
get_undernourishment_by_countries <- function(Countries) {
  c <- undernourishment_data %>% 
    filter(Country %in% Countries) %>%
    group_by(Year, Country) %>%
    select(Country, Year, Prevalence_of_Undernourishment) %>%
    na.omit() %>%
    summarize(Prevalence_of_Undernourishment = sum(Prevalence_of_Undernourishment))
  return(c)   
}

get_undernourishment_by_countries(c("Afghanistan", "Belize", "Ethiopia", "Thailand"))

# Function 2
plot_undernourishment_by_countries <- function(Countries) {
  p <- ggplot(data = get_undernourishment_by_countries(Countries)) +
    geom_line(mapping = aes(x = Year, y = Prevalence_of_Undernourishment, color = Country)) + 
    labs(title = "Prevalence of Undernourishment by Country from 2001 to 2019", 
         x = "Year",
         y = "Prevalence of Undernourishment")
  
  return(p)
}

plot_undernourishment_by_countries(c("Afghanistan", "Belize", "Ethiopia", "Thailand"))


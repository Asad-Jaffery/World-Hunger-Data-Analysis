# Libraries
library("dplyr")
library("tidyr")
library("ggplot2")

# Load dataset
country_wide_average <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-AsadJafferyy/main/data/country-wide-average.csv")
View(country_wide_average)

# Function 1
get_country_underweight_pop <- function() {
  s <- country_wide_average %>%
    select(Country, Underweight) %>%
    na.omit()
  return(s)   
}

get_country_underweight_pop()

# Function 2
plot_underweight_pop_country <- function() {
  p <- ggplot(data = get_country_underweight_pop()) + 
    geom_col(mapping = aes(x = Country, y = Underweight)) +
    scale_x_discrete(guide = guide_axis(angle = 90)) +
    labs(title = "Perecentage of Underweight Population in Countries", 
         x = "Country",
         y = "Underweight Population")
  return(p)   
} 

plot_underweight_pop_country()

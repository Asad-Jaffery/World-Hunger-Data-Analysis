library("tidyverse")

country_wide_average <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-AsadJafferyy/main/data/country-wide-average.csv")


View(country_wide_average)


# Country with highest percentage of underweight population 
highest_underweight <- country_wide_average %>% 
  filter(Underweight == max(Underweight, na.rm = TRUE)) %>%
  pull(Country)

highest_underweight <- function(highest_underweight){
  t <- print(highest_underweight)
  return(t) 
}



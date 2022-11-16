library("tidyverse")

country_wide_average <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-AsadJafferyy/main/data/country-wide-average.csv")
global_hunger_index <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-AsadJafferyy/main/data/global-hunger-index.csv")
undernourishment_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-AsadJafferyy/main/data/prevalence-of-undernourishment.csv")

View(country_wide_average)


# Country with highest percentage of underweight population 
highest_underweight1 <- country_wide_average %>% 
  filter(Underweight == max(Underweight, na.rm = TRUE)) %>%
  pull(Country)

highest_underweight <- function(){
  t <- paste("Country with the highest percentage of underweight population is ", highest_underweight1)
  return(t) 
}



# Country with lowest percentage of underweight population
summary_info$lowest_underweight <- country_wide_average %>% 
  filter(Underweight == min(Underweight, na.rm = TRUE)) %>%
  pull(Country)


# Country with highest percentage of undernourished population (recent date)

summary_info$highest_undernourishmnt <- undernourishment_data %>%
  filter(Year == max(Year, na.rm = TRUE)) %>%
  filter(Prevalence.of.undernourishment....of.population. == max(Prevalence.of.undernourishment....of.population.,na.rm = TRUE))%>%
  pull(Entity)


# Country with lowest percentage of undernourished population (recent date)

summary_info$highest_undernourishmnt <- undernourishment_data %>%
  filter(Year == max(Year, na.rm = TRUE)) %>%
  filter(Prevalence.of.undernourishment....of.population. == min(Prevalence.of.undernourishment....of.population.,na.rm = TRUE))%>%
  pull(Entity)


# Country with the highest GHI (Global Hunger Index) score in the most recent year the data records

summary_info$highest_GHI <- global_hunger_index %>%
  filter(Year == max(Year, na.rm = TRUE)) %>%
  filter(Global.Hunger.Index..2021. == max(Global.Hunger.Index..2021., na.rm = TRUE)) %>%
  pull(Entity)


# Country with the lowest GHI (Global Hunger Index) score in the most recent year the data records

summary_info$lowest_GHI <- global_hunger_index %>%
  filter(Year == max(Year, na.rm = TRUE)) %>%
  filter(Global.Hunger.Index..2021. == min(Global.Hunger.Index..2021., na.rm = TRUE)) %>%
  pull(Entity)

View(summary_info)


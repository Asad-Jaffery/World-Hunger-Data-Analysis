library("tidyverse")

country_wide_average <- read.csv("~/info201/project-AsadJafferyy/data/country-wide-average.csv")
undernourishment <- read.csv("~/info201/project-AsadJafferyy/data/prevalence-of-undernourishment.csv")
hunger_index <- read.csv("~/info201/project-AsadJafferyy/data/global-hunger-index.csv")


View(country_wide_average)
View(global_malnutrition)
View(undernourishment)
View(hunger_index)

summary_info <- list()


# global_malnutrition information 


# Country with highest percentage of underweight population 
summary_info$highest_underweight <- country_wide_average %>% 
  filter(Underweight == max(Underweight, na.rm = TRUE)) %>%
  pull(Country)

# Country with lowest percentage of underweight population
summary_info$lowest_underweight <- country_wide_average %>% 
  filter(Underweight == min(Underweight, na.rm = TRUE)) %>%
  pull(Country)


# Country with highest percentage of undernourished population (recent date)

summary_info$highest_undernourishmnt <- undernourishment %>%
  filter(Year == max(Year, na.rm = TRUE)) %>%
  filter(Prevalence.of.undernourishment....of.population. == max(Prevalence.of.undernourishment....of.population.,na.rm = TRUE))%>%
  pull(Entity)


# Country with lowest percentage of undernourished population (recent date)

summary_info$highest_undernourishmnt <- undernourishment %>%
  filter(Year == max(Year, na.rm = TRUE)) %>%
  filter(Prevalence.of.undernourishment....of.population. == min(Prevalence.of.undernourishment....of.population.,na.rm = TRUE))%>%
  pull(Entity)


# Country with the highest GHI (Global Hunger Index) score in the most recent year the data records

summary_info$highest_GHI <- hunger_index %>%
  filter(Year == max(Year, na.rm = TRUE)) %>%
  filter(Global.Hunger.Index..2021. == max(Global.Hunger.Index..2021., na.rm = TRUE)) %>%
  pull(Entity)


# Country with the lowest GHI (Global Hunger Index) score in the most recent year the data records

summary_info$lowest_GHI <- hunger_index %>%
  filter(Year == max(Year, na.rm = TRUE)) %>%
  filter(Global.Hunger.Index..2021. == min(Global.Hunger.Index..2021., na.rm = TRUE)) %>%
  pull(Entity)

View(summary_info)

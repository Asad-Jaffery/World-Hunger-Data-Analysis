library("tidyverse")

country_wide_average <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-AsadJafferyy/main/data/country-wide-average.csv")
global_hunger_index <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-AsadJafferyy/main/data/global-hunger-index.csv")
undernourishment_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-AsadJafferyy/main/data/prevalence-of-undernourishment.csv")




# Country with highest percentage of underweight population 
highest_underweight1 <- country_wide_average %>% 
  filter(Underweight == max(Underweight, na.rm = TRUE)) %>%
  pull(Country)

highest_underweight <- function(){
  t <- paste("Country with the highest percentage of underweight population is", highest_underweight1)
  return(t) 
}


# Country with lowest percentage of underweight population
lowest_underweightr <- country_wide_average %>% 
  filter(Underweight == min(Underweight, na.rm = TRUE)) %>%
  pull(Country)

lowest_underweight <- function(){
  t <- paste("Country with the lowest percentage of underweight population is", lowest_underweightr)
  return(t)
}

# Country with highest percentage of undernourished population (recent date)

highest_undernourishment1 <- undernourishment_data %>%
  filter(Year == max(Year, na.rm = TRUE)) %>%
  filter(Prevalence.of.undernourishment....of.population. == max(Prevalence.of.undernourishment....of.population.,na.rm = TRUE))%>%
  pull(Entity)

highest_undernourishment <- function(){
  t <- paste("Country with the highest percentage of undernourished population is", highest_undernourishment1)
  return(t)
}

# Country with lowest percentage of undernourished population (recent date)

lowest_undernourishment1 <- undernourishment_data %>%
  filter(Year == max(Year, na.rm = TRUE)) %>%
  filter(Prevalence.of.undernourishment....of.population. == min(Prevalence.of.undernourishment....of.population.,na.rm = TRUE))%>%
  pull(Entity)

lowest_undernourishment <- function(){
  t <- paste("Country with the lowest percentage of undernourished population is", highest_undernourishment1)
  return(t)
}

# Country with the highest GHI (Global Hunger Index) score in the most recent year the data records

highest_GHI1 <- global_hunger_index %>%
  filter(Year == max(Year, na.rm = TRUE)) %>%
  filter(Global.Hunger.Index..2021. == max(Global.Hunger.Index..2021., na.rm = TRUE)) %>%
  pull(Entity)

highest_GHI <- function(){
  t <- paste("Country with the highest GHI (Global Hunger Index) score is", highest_GHI1)
  return(t)
}

# Country with the lowest GHI (Global Hunger Index) score in the most recent year the data records

lowest_GHI1 <- global_hunger_index %>%
  filter(Year == max(Year, na.rm = TRUE)) %>%
  filter(Global.Hunger.Index..2021. == min(Global.Hunger.Index..2021., na.rm = TRUE)) %>%
  pull(Entity)

lowest_GHI <- function(){
  t <- paste("Country with the lowest GHI (Global Hunger Index) score is", lowest_GHI1)
  return(t)
}

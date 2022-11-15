library(ggplot2)
library(dplyr)
library(viridis)
library(hrbrthemes)
library(plotly)

#load dataset
country_wide_average <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-AsadJafferyy/main/data/country-wide-average.csv")

#wrangle data
country_wide_average <- country_wide_average %>%
  select(Country, Income.Classification, Wasting)
View(country_wide_average)

#plot
p <- country_wide_average %>% 
  ggplot(country_wide_average, aes(x = Income.Classification, y = Wasting)) +
    geom_point()

#make interactive
p <- ggplotly(p, tooltip="text")

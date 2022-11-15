library(ggplot2)
library(dplyr)
library(viridis)
library(hrbrthemes)
library(plotly)

# Load dataset
undernourishment_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-AsadJafferyy/main/data/prevalence-of-undernourishment.csv")

# Edit column names
colnames(undernourishment_data)[4] = "Prevalence_of_Undernourishment"
colnames(undernourishment_data)[1] = "Country"

# Wrangle dataset
undernourishment_data <- undernourishment_data %>% 
  select(Country, Year, Prevalence_of_Undernourishment)

View(undernourishment_data)

# Plot
p <- undernourishment_data %>% 
  ggplot( aes(x=Year, y=Prevalence_of_Undernourishment, fill=Country, text=Country)) +
  geom_area( ) +
  scale_fill_viridis(discrete = TRUE) +
  theme(legend.position="none") +
  ggtitle("Prevalence of Undernourishment of Populations") +
  theme_ipsum() +
  theme(legend.position="none")

# Turn it interactive
p <- ggplotly(p, tooltip="text")
p
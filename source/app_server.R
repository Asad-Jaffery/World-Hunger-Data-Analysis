library(shiny)
library(dplyr)
library(ggplot2)
library(tidyr)

#------------------------------------------------------------------------------#
# interactive visualization one 

undernourishment_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-AsadJafferyy/main/data/prevalence-of-undernourishment.csv")
colnames(undernourishment_data)[4] = "Prevalence_of_Undernourishment"
colnames(undernourishment_data)[1] = "Country"

data_undernourishment <- undernourishment_data %>% 
  na.omit() %>%
  group_by(Country) %>%
  select(Country, Year, Prevalence_of_Undernourishment)

server <- function(input, output){
  
  output$distPlot <- renderPlot({
    
    ggplot(data_undernourishment %>% filter(Country == input$Country)) +
      geom_line(mapping = aes(x = Year, y = Prevalence_of_Undernourishment,
                              color = Country)) + 
      labs(title = "Prevalence of Undernourishment by Country from 2001 to 2019", 
           x = "Year",
           y = "Prevalence of Undernourishment")
  })
}

#------------------------------------------------------------------------------#
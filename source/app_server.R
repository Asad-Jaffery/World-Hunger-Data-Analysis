library(shiny)
library(dplyr)
library(ggplot2)
library(tidyr)
library(stringr)

#------------------------------------------------------------------------------#
# interactive visualization one 

undernourishment_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-AsadJafferyy/main/data/prevalence-of-undernourishment.csv")

colnames(undernourishment_data)[4] = "Prevalence_of_Undernourishment"
colnames(undernourishment_data)[1] = "Country"

data_undernourishment <- undernourishment_data %>% 
  na.omit() %>%
  group_by(Country) %>%
  select(Country, Year, Prevalence_of_Undernourishment)


# server <- function(input, output){
#   
#   output$UndernourishmentChart<- renderPlot({
#     
#     ggplot(data_undernourishment %>% filter(Country == input$Country)) +
#       geom_line(mapping = aes(x = Year, y = Prevalence_of_Undernourishment,
#                               color = Country)) + 
#       labs(title = "Prevalence of Undernourishment by Country from 2001 to 2019", 
#            x = "Year",
#            y = "Prevalence of Undernourishment")
#   })
# }

#------------------------------------------------------------------------------#

#interactive Visualization two

malnutrition_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-AsadJafferyy/main/data/malnutrition-estimates.csv")

malnutrition_data$Country <- str_to_title(malnutrition_data$Country)

data_malnutrition <- malnutrition_data %>%
  na.omit() %>%
  group_by(Country) %>%
  select(Country, Year, Underweight) 

#View(data_malnutrition)

# server <- function(input, output){
#   output$range <- renderPrint({input$Year})
#   
#   output$UnderweightChart <- renderPlot({
#     data_malnutrition <- data_malnutrition %>%
#       filter(Year >= input$Year[1], Year <= input$Year[2])
#     
#     ggplot(data_malnutrition %>% filter(Country == input$Country)) +
#       geom_col(mapping = aes(x = Year,
#                              y = Underweight)) +
#       labs(title = "Underweight Population of Countries", 
#            x = "Year",
#            y = "Underweight Population")
#   })
# }

#------------------------------------------------------------------------------#
# Server

server <- function(input, output){
  
  output$UndernourishmentChart<- renderPlot({
    
    ggplot(data_undernourishment %>% filter(Country == input$Country)) +
      geom_line(mapping = aes(x = Year, y = Prevalence_of_Undernourishment,
                              color = Country)) + 
      labs(title = "Prevalence of Undernourishment by Country from 2001 to 2019", 
           x = "Year",
           y = "Prevalence of Undernourishment (% of total population)")
  })
    
    output$range <- renderPrint({input$Year})
    
    output$UnderweightChart <- renderPlot({
      data_malnutrition <- data_malnutrition %>%
         filter(Year >= input$Year[1], Year <= input$Year[2])
      
      
      data_malnutrition <- data_malnutrition %>% 
       filter(Country == input$country)
      
      ggplot(data_malnutrition) +
        geom_col(mapping = aes(x = Year,
                               y = Underweight)) +
        labs(title = "Underweight Population of Countries", 
             x = "Year",
             y = "Underweight Population (% of total population)")
  })
}

#------------------------------------------------------------------------------#


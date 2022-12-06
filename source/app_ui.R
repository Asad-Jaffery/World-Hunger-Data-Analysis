library(shiny)
source("app_server.R")


#------------------------------------------------------------------------------#
# page two content
page_two <- tabPanel(
  "Interactive Visualization",
  titlePanel("Prevalence of Undernourishment by Country from 2001 to 2019"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "Country",
                  label = "Select Country",
                  choices = c(data_undernourishment$Country))
    ),
  mainPanel(
    plotOutput("distPlot")
  )
 )
)

#------------------------------------------------------------------------------#
# combine pages
ui <- navbarPage(
  "Combatting World Hunger Through Data Analysis",
  page_two
)


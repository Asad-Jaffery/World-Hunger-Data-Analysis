library(shiny)
source("app_server.R")


#------------------------------------------------------------------------------#
# page two content
page_two <- tabPanel(
  "Chart 1",
  titlePanel("Prevalence of Undernourishment by Country from 2001 to 2019"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "Country",
                  label = "Select Country",
                  choices = c(data_undernourishment$Country))
    ),
  mainPanel(
    plotOutput("UndernourishmentChart")
  )
 )
)

#------------------------------------------------------------------------------#
#page three

page_three <- tabPanel(
 "Chart 2",
  titlePanel("test"),
 
 sliderInput("slider2", label = h3("Year Range"), min = 1850, 
             max = 2022, value = c(1850, 2022), sep = "", width = '100%'),
 
 selectInput("Location", label = h3("Select Country"),
             choices = c(data_malnutrition$Country)),
  
)




#------------------------------------------------------------------------------#

# combine pages
ui <- navbarPage(
  "Combatting World Hunger Through Data Analysis",
  page_two
)


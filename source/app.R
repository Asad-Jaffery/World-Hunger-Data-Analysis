library("shiny")

# source UI and server
source("app_ui.R")
source("app_server.R")

# load shiny app!
shinyApp(ui = ui, server = server)

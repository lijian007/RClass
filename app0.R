#example of basic reactive programming
reactlog::reactlog_enable()
library(shiny)
ui <- fluidPage(
  
  numericInput("price", "Price", value = 100),
  uiOutput("profit")
)
server <- function(input, output, session) {
  
  output$profit=renderUI(h3(paste("The profit is",input$price-20)))
}
shinyApp(ui, server)
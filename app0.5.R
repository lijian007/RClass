#example of basic reactive programming
reactlog::reactlog_enable()
library(shiny)
ui <- fluidPage(
  numericInput("price", "price", value = 100),
  plotOutput("plot")
)
server <- function(input, output, session) {
  
  output$plot=renderPlot({
   
    barplot(c(profit=input$price-20, 
              root_of_profit=sqrt(input$price-20)), col='blue')
  }, width=400)
}
shinyApp(ui, server)
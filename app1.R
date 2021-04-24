#example use of reactive
library(shiny)
ui <- fluidPage(
  numericInput("price", "price", value = 100),
  plotOutput("plot")
)
server <- function(input, output, session) {
  output$plot=renderPlot({
    barplot(c(net=input$price-20, root_of_net=sqrt(input$price-20)), col='blue')
  }, width=400)
}
shinyApp(ui, server)

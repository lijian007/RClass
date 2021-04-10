#example use of reactive
library(shiny)
ui <- fluidPage(
  numericInput("price", "price", value = 100),
  plotOutput("plot")
)
server <- function(input, output, session) {
  net=reactive(input$price-20)
  output$plot=renderPlot({
    barplot(c(net=net(), root_of_net=sqrt(net())), col='blue')
  }, width=400)
}
shinyApp(ui, server)

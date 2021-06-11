library(shiny)

ui <- fluidPage(
  
  titlePanel("Hello World!"),
  
  sidebarLayout(
    sidebarPanel(
      textInput(inputId = "text_input", label = "Input text here:")
    ),
    
    mainPanel(
      textOutput(outputId = "text_output")
    )
  )
)

server <- function(input, output) {
  
  text <- reactive({
    paste("You typed:", input$text_input)
  })
  
  output$text_output <- renderText({
    text()
  })
  
}

shinyApp(ui = ui, server = server)

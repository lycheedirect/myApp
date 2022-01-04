#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    values <- reactiveValues()
  
    observe({
      Age <- 1:16
      S <- c(15,24,28,32,36,40,44,48,52,56,60,64,68,72,76,80)
      M <- c(15,24,28,32,36,42,47,51,56,60,65,69,74,78,83,87)
      L <- c(15,24,28,32,36,45,50,55,61,66,72,77,82,88,93,99)
      G <- c(12,22,31,38,45,49,56,64,71,79,86,93,100,107,114,121)
      lookup_table <- data.frame(Age,S,M,L,G)
      
      row <- input$dogage
      
      if (input$dogsize == 'S'){col=2}
      if (input$dogsize == 'M'){col=3}
      if (input$dogsize == 'L'){col=4}
      if (input$dogsize == 'G'){col=5}  
      values$result = lookup_table[row,col]
    })
    
    
    output$doginhumanage <- renderText({values$result})

    

})

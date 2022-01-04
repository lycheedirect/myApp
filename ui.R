#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("What is Your Dog's Age in Human Years?"),

    # Selection via slider
    sliderInput("dogage", label = "Dog Age:", min = 1, max = 16, value=16),
   
    # Selection via drop down box
    selectInput("dogsize", "Choose Dog Size: Small <20 lbs, Medium 21-50 lbs, Large 51-100 lbs, Giant >100 lbs",
                list(`Dog Age` = list("S","M","L","G"))
    ),
    
    # Shows result of dog in human age
    mainPanel(
      p(h3("Your Dog in Human Age is: ")),
      textOutput("doginhumanage")
              )
    
    )
)



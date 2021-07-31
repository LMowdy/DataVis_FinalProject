library(shiny)
library(datasets)
library(UsingR)

shinyUI(pageWithSidebar(
  headerPanel("Select Your Number of Cylinders"),
  sidebarPanel(
    numericInput('id1','Numeric input, Options: 4, 6, or 8',4,min=4,max=8,step=2)
  ),
  mainPanel(
    h3('Results of prediction'),
    h4('You entered'),
    h4('Which resulted in an average gas mileage in the city of: '),
    verbatimTextOutput("prediction_cty"),
    h4('Which resulted in an average gas mileage on the highway of: '),
    verbatimTextOutput("prediction_hwy")
  )
))

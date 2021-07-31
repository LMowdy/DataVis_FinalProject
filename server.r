# Libraries
library(shiny)
library(datasets)
library(UsingR)
library(ggplot2)

rm(list = ls())
graphics.off()

help(mpg)
summary(mpg)
m <- mpg

manu.fctr <- as.factor(mpg$manufacturer)
model.fctr <- as.factor(mpg$model)
trans.fctr <- as.factor(mpg$trans)
drv.fctr <- as.factor(mpg$drv)
fl.fctr <- as.factor(mpg$fl)
class.fctr <- as.factor(mpg$class)

newFigure <- m %>% 
              ggplot(aes(x = cty, y = hwy, color = displ)) +
              geom_point() +
              scale_colour_gradientn(colours = c("red", "green", "blue"))

#city_mpg <- subset(m, cyl == input$id1)
#city_6 <- subset(m, cyl == 6)
#city_8 <- subset(m, cyl == 8)
#hwy_mpg <- subset(m, cyl == input$id1)
#hwy_6 <- subset(m, cyl == 6)
#hwy_8 <- subset(m, cyl == 8)

#mean(subset(m$cty, m$cyl == 4))

shinyServer(
  function(input,output){
    output$inputValue <- renderPrint({input$id1})
    #output$prediction_cty <- renderPrint(mean(subset(m$cty, m$cyl == {output$inputValue})))
    #output$prediction_hwy <- renderPrint(mean(subset(m$hwy, m$cyl == {output$inputValue})))
    
  }
)
shinyServer(
  function(input,output){
    #output$inputValue <- renderPrint({input$id1})
    output$prediction_cty <- renderPrint(mean(subset(m$cty, m$cyl == {input$id1})))
    output$prediction_hwy <- renderPrint(mean(subset(m$hwy, m$cyl == {input$id1})))
    
  }
)
shinyServer(
  function(input,output){
    #output$inputValue <- renderPrint({input$id1})
    #output$prediction_cty <- renderPrint(mean(subset(m$cty, m$cyl == {input$id1})))
    output$prediction_hwy <- renderPrint(mean(subset(m$hwy, m$cyl == {input$id1})))
    
  }
)
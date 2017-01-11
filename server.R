library(shiny)
library(ggplot2)
data("diamonds")
# Create linear model function 
fit1 <- lm(formula = price ~ carat + cut + color + clarity, data = diamonds)


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$predictedprice <- renderText({  
      carat <- as.numeric(input$carat)
      cut <- as.character(input$cut)
      color <- as.character(input$color)
      clarity <- as.character(input$clarity)
      
      newrow <- list(carat, cut, color, clarity, 0, 0, 0, 0, 0, 0)
      diamonds <- rbind(diamonds, newrow)
      predictedprice <- predict(fit1, newdata = diamonds[53941, ])
      predictedprice
      
      
  })
  
})

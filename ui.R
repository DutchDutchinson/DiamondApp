library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Calculate a Diamond's worth!"),
  
  # Inputs 
  sidebarLayout(
    sidebarPanel(
     
       sliderInput("carat",
                   label = h3("Choose Carat Size"),
                   min = 0,
                   max = 6,
                   value = 0,
                   step = .1),
       
       selectInput("cut", label = h3("Select Cut Quality"), 
                   choices = list("Fair" = "Fair", "Good" = "Good", "Very Good" = "Very Good", "Premium" = "Premium", "Ideal" = "Ideal"), 
                   selected = "Fair"),
       
       selectInput("color", label = h3("Select Color Grade"), 
                   choices = list("D" = "D", "E" = "E", "F" = "F", "G" = "G", "H" = "H", "I" = "I", "J" = "J"), 
                   selected = "D"),
       
       selectInput("clarity", label = h3("Select Clarity Grade"), 
                   choices = list("I1" = "I1", "SI2" = "SI2", "SI1" = "SI1", "VS2" = "VS2", "VS1" = "VS1", "VVS2" = "VVS2", "VVS1" = "VVS1", "IF" = "IF"), 
                   selected = "I1")
       
       
       
    ),
    
    # Display estimated cost
    mainPanel(
        p("The Diamond is estimated to cost (USD):"),
        textOutput("predictedprice", inline = TRUE)
    )
  )
))

library(shiny)
shinyUI(fluidPage(
  titlePanel("Predict Weight from MPG"),
  sidebarLayout(
    sidebarPanel(
	  sliderInput("sliderMPG", "What is the MPG of the car?", 10, 35, value = 20),
	  checkboxInput("showModel1", "Show/Hide Model 1", value = TRUE),
	  checkboxInput("showModel2", "Show/Hide Model 2", value = TRUE)
    ),
    mainPanel(
	  em("This application predicts the weight of a car given the fuel efficiency in miles per gallon for the car."),
      plotOutput("plot1"),
      h3("Predicted Weight from Model 1:"),
      textOutput("pred1"),
      h3("Predicted Weight from Model 2:"),
      textOutput("pred2")
    )
  )
))

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
  titlePanel("Normal Distribution Modeling"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("u",
                   "Mean",
                   min = -2,
                   max = 2,
                   value = 0),
       sliderInput("std",
                   "Standar Deviation",
                   min = 0,
                   max = 4,
                   value = 1)
    ),

    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot"),
       h1('Documentation'),
       p('Vary the slider to adjust Model parameters and see the effect of the graph')
       
    )
  )
))


# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(magick)

shinyUI(fluidPage(

  # Application title
  titlePanel("magick"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      fileInput("img_input", "Upload image")
      ),

    # Show a plot of the generated distribution
    mainPanel(
      
      imageOutput("img_output"),
      textOutput("text"),
      textOutput("text2")
    )
  )
))

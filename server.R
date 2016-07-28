library(shiny)

shinyServer(function(input, output) {
  
  get_image <- reactive({
    if(is.null(input$img_input)) return(NULL)
    else {
      outfile <- tempfile(fileext = ".jpg")
      image_write(image_read(input$img_input[[4]]), outfile)
      return(outfile)
    }
  })

  output$img_output <- renderImage({

    list(src = get_image())
    
  }, deleteFile = TRUE)
  
  output$text <- renderText({
    length(input$img_input)
  })
  
  output$text2 <- renderText({
    input$img_input[[4]]
  })
  

})

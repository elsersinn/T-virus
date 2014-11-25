

library(shiny)
library(shinyGlobe)


# Predict virus Risk simply
virusRisk <- function(air,wat,an,res,population){
        risk <- (air+wat+an+res)/3    
        population[,3]<-population[,3]*risk
        population
} 


# Define server logic required to generate simple WebGL Globe

shinyServer(function(input, output, session) {
       
  
        
        
        
  population <- readRDS("population.Rds")
  #Filter out to only major cities -- otherwise too much data. Now ~4.5k rows
  population <- population[population$Population > .0025, ]
  
  output$globe <- renderGlobe({
          virusRisk(input$air,input$wat,input$an,input$res,population)
  })
})




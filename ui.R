library(markdown)
library(shiny)
library(shinyGlobe)



shinyUI(pageWithSidebar(
        
        # Title
        headerPanel("T-Virus Casualty Prediction"),
        
        sidebarPanel(

                helpText('Imagine you are engineering the deadly T-virus. 
                         Use the sliders to set its genetic parameters and watch mayhem unveil!.
                         Remember that you need Chrome, Firefox 4 or Webkit Nightly (Mac) to visualize it correctly!'),
                sliderInput("air","Airborne propagation",
                            min=1,max=5,value=1,animate=FALSE),
                sliderInput("wat","Water propagation",
                            min=1,max=5,value=2),
                sliderInput("an","Animal propagation",
                            min=1,max=5,value=2,step=1),
                sliderInput("res","Antibiotics resistance",
                            min=1,max=5,value=1)

        ),
        

        
        mainPanel(
                
                globeOutput("globe"),
                                        div(id="info", tagList(
                                                 HTML(
                                                       'Population data from <a href="http://maxmind.com">MaxMind</a>.'
                                                             ),
                                                      HTML(
                                '<br />Built in <a href ="http://rstudio.com/shiny/">Shiny</a> using the <a href ="http://github.com/trestletech/shinyGlobe/">ShinyGlobe</a> package.'
                                             )
                                ))
                
                

        )
        
        
))


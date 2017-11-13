library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Simulation Experiment"),
  sidebarLayout(
    sidebarPanel(
      
       h3("Let us select parameters for a  normal distribution"),
      
      sliderInput("Samplesize","Select sample size",min=20,max=100, value=20),
      
      numericInput("mean", "select mean",min = 0, max = 100, value = 0),
      
      numericInput("sd","select standard deviation", min=0.01, max=20, step = 0.01, value = 1)
    
      ),
  
    mainPanel(
      plotOutput("plotout"),
      h5("Instructions: Please select a sample size to generate a histogram for a normal distribution
                     with a particular mean and standard deviation"),
      h5("Please go ahead and play with the parameters to generate a better normal distribution. 
          Note the combination that gives you the best results")
      )
  )
)
)



#https://shubhambansal3.shinyapps.io/NormalSimulation/
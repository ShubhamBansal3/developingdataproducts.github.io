library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  
  output$plotout<- renderPlot({
    
    Vec<- reactive({rnorm(input$Samplesize, input$mean, input$sd)})
    
    Vec_mean<- reactive({mean(Vec())})
    
    Vec_sd<- reactive({sd(Vec())})
    
  
    
    xfit<- reactive({seq(min(Vec()), max(Vec()),length=40)})
    
    yfit<- reactive({dnorm(xfit(),Vec_mean(),Vec_sd())})
    
    
    
    hist(Vec(), breaks =20, col = "steelblue", xlab = "Accuracy",
         main = "Distribution of sampling Means",freq = FALSE)
    
    lines(xfit(), yfit(), col="black", lwd=2)
    
  
    })
  
  
}
)
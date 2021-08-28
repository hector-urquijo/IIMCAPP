#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    values <- reactiveValues()
    
    observe({
        input$FindBMI
        values$bmi <- isolate({
            
            input$ing_weight_kg/(input$int_height_cm/100 * input$int_height_cm/100)
            
            
            
        })
    })
    
    
    
    # Display your current values
    output$current_height <- renderText({
        input$FindBMI
        paste("Altura actual en CM: ", isolate(input$int_height_cm)) #Current Height in CM
    })
    
    output$current_weight <- renderText({
        input$FindBMI
        paste("Peso actual en KG : ", isolate(input$ing_weight_kg)) #Current Weight in KG
    })
    
    
    output$status_indicator <- renderText({
        
        
        if(input$FindBMI == 0) ""
        else {
            
            if (values$bmi < 18.5)
            {
                values$status_indicator = "Bajo en Peso" #Underweight
                
            }
            
            else if (values$bmi < 24.9)
            {
                values$status_indicator="Peso Normal" #Normal weight
            }
            else if (values$bmi < 29.9)
            {
                values$status_indicator="SobrePeso" # Overweight
            }
            else
            {
                values$status_indicator="Obesidad"  #Obesity
            }
            
            
            paste("Clasificacion Segun IMC: ", values$status_indicator) #Classification according to BMI
        }
    })
    
    
    # Display your BMI
    
    output$BMI_result <- renderText({
        if(input$FindBMI == 0) ""
        else
           paste("Su IMC actual es:", values$bmi) #Your current BMI is
    })
    
    
    
    
    
    
})
#
# Esta es la definición de interfaz de usuario de una aplicación web Shiny. Usted puede
# ejecute la aplicación haciendo clic en 'Ejecutar aplicación' arriba.
#
# Obtenga más información sobre la creación de aplicaciones con Shiny aquí:
# 
#     http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(
    
    titlePanel("Calculadora de Indice de Masa Corporal "),
    
    sidebarLayout(
        sidebarPanel( 
            
            helpText("El IMC es una medida util para mantener una adecuada salud, esta aplicación permite calcularlo"),            
            br (),           
            numericInput("ing_weight_kg" , label  = h4("Seleccione su Peso (KG)"), min  =  2 , max  =  300 , 0 ), # , value = 70
            br (),
            numericInput("int_height_cm" , label  = h4("Seleccione su altura (CM)"), min  =  40 , max  =  250 , 0), # , value = 170
            br (),
            
            br (),   
            actionButton("FindBMI" , label  =  "Calcular IMC")    
            
            
        ),
        mainPanel
        (
            tabsetPanel
            (
                tabPanel("Calcule su IMC " ,
                           p(h4 ("Sus medidas actuales son: ")),
                           textOutput("current_height"),
                           textOutput("current_weight"),
                           br(),
                           p(h4("Indice de Masa Corporal: ")),
                           textOutput("BMI_result" ),
                           p(h4("clasificación Nutricional: ")),
                           textOutput("status_indicator")
                           
                ),
                tabPanel(
                    "Que es y Para que funciona" ,
                    p(h4 ("Aplicación del índice de masa corporal " )),
                    br(),
                    helpText("Aplicación para calcular el IMC de una persona con datos del peso y de la altura " ),
                    p(h3("Importancia del IMC" )),
                    helpText( "El IMC sirve para identificar si su peso corresponde a su estatura, es una medida común, sencilla y rapida para saber el estado nutricional de las personas" )
                )
                
                
            )
        )
    )
)
)


 
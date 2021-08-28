Proyecto del curso shiny
========================================================
author: Hector Urquijo
date:   28 Agosto 2021
autosize: true

Aplicación brillante y tono reproducible

Proyecto
========================================================

Aplicación para calcular el IMC de una persona
Utilizando datos del peso en Kg y de altura en Cm



El IMC sirve para identificar si su peso corresponde a su estatura, es una medida común, 
sencilla y rapida para saber el estado nutricional de las personas

El Codigo en  R
========================================================


En la siguiente diapositiva, mostramos cómo se ejecuta la aplicación con código R 

El siguiente código calcula el índice de masa corporal

Los parámetros utilizados son peso y altura.

Ejecutable
========================================================



```r
   altura <- 158
   peso <- 58
   IMC <- peso / (altura/100 * altura/100)
   IMC
```

```
[1] 23.23346
```

Aplicación
========================================================


Se encuentra en el siguiente enlace:
https://webhectorurquijo.shinyapps.io/IMCAPP/

El código fuente está alojado en el siguiente enlace
https://github.com/hector-urquijo/IIMCAPP




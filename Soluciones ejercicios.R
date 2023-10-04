#LUCIA LARA LATORRE


#EJERCICIO 1

# Aplicar los criterios de decisión bajo incertidumbre
#a los problemas cuya matriz de valores numéricos vienen dadas en las tablas siguientes
source("teoriadecision_funciones_incertidumbre.R")
tbej1 <- crea.tablaX(c(1,5,9,3,5,6,
                       1,5,6,9,5,2,
                       -5,3,-9,4
),numalternativas=4, numestados=4)

#SITUACIÓN FAVORABLE / BENEFICIOS

#Criterio de Wald
criterio.Wald(tbej1,favorable=TRUE)
#La mejor alternativa según el criterio de Wald es la “d3” siendo el valor óptimo el 2.

#Criterio optimista
mopt=criterio.Optimista(tbej1,T)
names(mopt$AlternativaOptima)
#La mejor alternativa según el criterio optimista es la “d3” y la "d1" siendo el valor óptimo el 9.

#Criterio de Hurwicz
criterio.Hurwicz(tbej1,alfa=0.4,T)
#La mejor alternativa según el criterio de Hurwicz es la “d3” siendo el valor óptimo el 4.9.


#Criterio Savage
criterio.Savage(tbej1,T)
#La mejor alternativa según el criterio de Savage es la “d3” siendo el valor óptimo el 4.


#Criterio Laplace
criterio.Laplace(tbej1,T)
#La mejor alternativa según el criterio de Laplace es la “d3” siendo el valor óptimo el 5.5.

#Criterio punto ideal
criterio.PuntoIdeal(tbej1,T)
#La mejor alternativa según el criterio del punto ideal es la “d3” siendo el valor óptimo el 5.


#Por tanto, elegiriamos la alternativa d3


#SITUACION DESFAVORABLE/ COSTOS

#Criterio de Wald
criterio.Wald(tbej1,favorable=FALSE)
#La mejor alternativa según el criterio de Wald es la “d4” siendo el valor óptimo el 4.

#Criterio optimista
criterio.Optimista(tbej1,F)
#La mejor alternativa según el criterio optimista es la “d4”  siendo el valor óptimo el -9.

#Criterio de Hurwicz
criterio.Hurwicz(tbej1,alfa=0.4,F)
#La mejor alternativa según el criterio de Hurwicz es la “d4” siendo el valor óptimo el -1.2.

#Criterio Savage
criterio.Savage(tbej1,F)
#La mejor alternativa según el criterio de Savage es la “d4” siendo el valor óptimo el 2.

#Criterio Laplace
criterio.Laplace(tbej1,F)
#La mejor alternativa según el criterio de Laplace es la “d4” siendo el valor óptimo el -1.75.

#Criterio punto ideal
criterio.PuntoIdeal(tbej1,F)
#La mejor alternativa según el criterio del punto ideal es la “d4” siendo el valor óptimo el 2.

#Por tanto, elegiríamos la alternativa "d4".

#EJERCICIO 2
tbej2 <- crea.tablaX(c(650,550,700
                       ,400,900,950,
                       300,1000,1500),numalternativas = 3, numestados = 3)
rownames(tbej2) <- c("Presencial","Modelo Mixto","Online")
colnames(tbej2) <- c("No se adaptan", "Se adaptan regular", "Se adaptan bien")

criterio.Todos(tbej2,0.5,T)

#Con estos resultados, se recomienda trabajar desde casa.

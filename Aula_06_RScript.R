install.packages(tidyverse) ## Instala tudo.
install.packages("descr")

library(descr)

names(enade14)

hist(enade14$tp_sexo, col="green", main = "Histograma da nota geral do Enade")


freq(enade14$tp_sexo, col="yellow", main = "Sexo")


summary(enade14$nu_idade)
freq(enade14$qe_i4, col="yellow", main = "Escolaridade") # Gráfico de barras
freq(enade14$qe_i5, col="yellow", main = "Escolaridade")
var(enade14$nu_idade)
sd(enade14$nu_idade)

hist(enade14$nu_idade, col="yellow", main = "Histograma da Idade do Enade")
boxplot(enade14$nu_idade)



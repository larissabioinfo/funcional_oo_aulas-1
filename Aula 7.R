#################
# Funcional e OO
# Iago Calazans
# Prof. Neylson Crepalde
# 2018/01
#################

library(readr)
library(dplyr)
library(descr)

enade14 <- read_csv2("https://raw.githubusercontent.com/neylsoncrepalde/introducao_ao_r/master/dados/enade_2014_amostra.csv")

names(enade14)

###################################
# Missão do dia:

# Nota geral dos alunos
hist(enade14$nt_ger, col="green", main = "Histograma da nota geral do Enade")

# Sexo
freq(enade14$tp_sexo, col="yellow", main = "Sexo")

# Cor/Raça
freq(enade14$qe_i5, col="red", main = "Cor/Raça")
enade14$cor_raca <-  enade14$qe_i2
enade14$cor_raca[enade14$cor_raca == "a"] <- "Branco"
enade14$cor_raca[enade14$cor_raca == "b"] <- "Negros"
enade14$cor_raca[enade14$cor_raca == "c"] <- "Pardos"
enade14$cor_raca[enade14$cor_raca == "d"] <- "Amarelo"
enade14$cor_raca[enade14$cor_raca == "e"] <- "Indigena"
freq(enade14$cor_raca, col="purple")

# Idade
freq(enade14$nu_idade, col="blue", main = "Idade")

# Escolaridade da mãe
freq()

# Renda
freq()

# Estatísticas descritivas separadamente
mean(enade14$nt_ger, na.rm = T) # Média
median(enade14$nt_ger, na.rm = T) # Mediana
min(enade14$nt_ger, na.rm = T) # Mínimo
max(enade14$nt_ger, na.rm = T) # Máximo
quantile(enade14$nt_ger, na.rm = T) # Quartis
var(enade14$nt_ger, na.rm = T) # Variancia
sd(enade14$nt_ger, na.rm = T) # Desvio padrão
################################

boxplot(enade14$nt_ger)

summary(enade14$nu_idade)
var(enade14$nu_idade)
sd(enade14$nu_idade)
hist(enade14$nu_idade, col = "#FF0099", main = "Idade")
################################

# Sexo tp_sexo
freq(enade14$tp_sexo)
enade14$tp_sexo[enade14$tp_sexo == "N"] <- NA

# Cor/Raça
freq(enade14$qe_i2, col="purple")

# Renda
freq(enade14$qe_i8, col="lightblue")
enade14$qe_i8[enade14$qe_i8 == "g"] <- "Baixa"
  
# Escolaridade da mãe
freq(enade14$qe_i5)
freq(enade14$qe_i4)

########## Algumas análises - PARTE LEGAL!! FINALMENTE!!
# Rodando um teste de médias (t de Student)
# Muito cuidade. O teste t de student só funciona para DUAS MÉDIAS
t.test(enade14$nt_ger ~ enade14$tp_sexo)

########## Criando a variável dummy (binária) branco
freq(enade14$qe_i2)
enade14$branco <- ifelse(enade14$qe_i2 == "a", 1, 0)
freq(enade14$branco, col = "lightpink", main = "True or False | Binarie")
class(enade14$branco)

# Testando
t.test(enade14$nt_ger ~ enade14$branco)

#Tabela cruzada (Mostra o resultado de duas variáveis categóricas) - "Factors"
cor_sexo <-  table(enade14$cor_raca, enade14$sexo)

#Escolaridade da mãe com a cor:
cor_escmae <- table(enade14$cor_raca, enade14$qe_i5)



###### Apagar tudo no console
Ctrl + l
rm(list=ls())




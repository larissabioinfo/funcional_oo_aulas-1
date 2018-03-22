################################################
# CENTRO UNIVERSITÁRIO METODISTA IZABELA HENDRIX
# PROGRAMAÇÃO FUNCIONAL ORIENTADA A OBJETOS
# Aula 07
# por Layla Comparin
################################################

sessionInfo()

#install.packages("readr")
#install.packages("dplyr")
#install.packages("descr")
#library(readr) # Carrega o pacote 
#library(dplyr) # Carrega o pacote
#library(descr) # Carrega o pacote 

#enade14 <- read_csv2("https://raw.githubusercontent.com/neylsoncrepalde/introducao_ao_r/master/dados/enade_2014_amostra.csv")

names(enade14) 
dim(enade14) # Dimensões do banco
str(enade14) # Estrutura do banco

#NotaGeral:

head(enade14$nt_ger)#Lê a primeira linha da tabela
tail(enade14$nt_ger)#Lê a última linha da tabela
summary(enade14$nt_ger)
mean(enade14$nt_ger, na.rm = T)
median(enade14$nt_ger, na.rm = T)
min(enade14$nt_ger, na.rm = T)
max(enade14$nt_ger, na.rm = T)
quantile(enade14$nt_ger, na.rm = T)
var(enade14$nt_ger, na.rm = T)
sd(enade14$nt_ger, na.rm = T)
hist(enade14$nt_ger, col="green", main = "Histograma da nota geral do Enade")
boxplot(enade14$nt_ger)

#Idade:

head(enade14$nu_idade)#Lê a primeira linha da tabela
tail(enade14$nu_idade)#Lê a última linha da tabela
summary(enade14$nu_idade)
mean(enade14$nu_idade, na.rm = T)
median(enade14$nu_idade, na.rm = T)
min(enade14$nu_idade, na.rm = T)
max(enade14$nu_idade, na.rm = T)
quantile(enade14$nu_idade, na.rm = T)
var(enade14$nu_idade, na.rm = T)
sd(enade14$nu_idade, na.rm = T)
hist(enade14$nu_idade, col="red", main = "Histograma da nota geral do Enade")
boxplot(enade14$nu_idade)

#Sexo:

head(enade14$tp_sexo)#Lê a primeira linha da tabela
tail(enade14$tp_sexo)#Lê a última linha da tabela
summary(enade14$tp_sexo)
freq(enade14$tp_sexo, col="#FF0088", main = "Sexo")
enade14$tp_sexo[enade14$tp_sexo == "N"] <- NA # Remove as respostas NA
freq(enade14$tp_sexo)


#Cor/Raça:

head(enade14$qe_i2)#Lê a primeira linha da tabela
tail(enade14$qe_i2)#Lê a última linha da tabela
summary(enade14$qe_i2)
freq(enade14$qe_i2, col="#FF0088", main = "Cor/Raça")

#Renda:

head(enade14$qe_i8)#Lê a primeira linha da tabela
tail(enade14$qe_i8)#Lê a última linha da tabela
summary(enade14$qe_i8)
freq(enade14$qe_i8, col="#FF0088", main = "Renda")
enade14$qe_i8[enade14$qe_i8 == "g"] <- "Teste" # Atribui o nome da coluna da variavel

#Escolaridade da mãe:

head(enade14$qe_i5)#Lê a primeira linha da tabela
tail(enade14$qe_i5)#Lê a última linha da tabela
summary(enade14$qe_i5)
freq(enade14$qe_i5, col="#FF0088", main = "Escolaridade da mãe")


#Análise do Banco de Dados:

#Rodando o teste de médias (t de Student) - O teste t de student só funciona
# para duas médias.
t.test(enade14$nt_ger ~ enade14$tp_sexo)

freq(enade14$qe_i2, col="#FF0088", main = "Cor/Raça")
#CONDIÇÃO: "a", SE SIM: 1, SENÃO: 0):
enade14$branco <- ifelse(enade14$qe_i2 == "a", 1, 0) 
freq(enade14$branco, col="#FF0088", main = "Cor/Raça")

#Testando:
t.test(enade14$nt_ger ~ enade14$branco)

#t = -7.3741 (teste), df = 8184.1 (), p-value = 1.816e-13 ()






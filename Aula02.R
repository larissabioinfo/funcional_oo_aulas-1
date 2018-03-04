################################################
# CENTRO UNIVERSITÁRIO METODISTA IZABELA HENDRIX
# PROGRAMAÇÃO FUNCIONAL ORIENTADA A OBJETOS
# Aula 02
# por Layla Comparin
################################################

########
## Revisão da aula passada

class(1)
class(1L)
class("1")

x <- c(5,4,7,4,2)
print(x)

nome = "Layla"
sobrenome = "Comparin"

paste(nome, sobrenome, sep ="|") #Junta characters
paste0(nome, sobrenome)  ## Junta characters sem separador

1:10

seq(from = 1, to = 10, by =0.5)
req(1:3, each = 5)

#############

# Matrizes (ps.: utiliza apenas 1 classe)

matrix(data = 1:16, nrow = 4, ncol = 4) ## cria uma matriz 4x4

## Obs.: Por default o comando matrix monta matrizes alocando os dados por coluna

A <- matrix(data = 1:16, nrow = 4, ncol = 4, byrow = T) ## matriz alocando os dados por linha

A
class(A)

########

#Subsetting lista - somente[]

lista[3]
class(lista[[3]])

#Subsetting - Dentro da lista, faça um Subsetting do elemento que está
# na 4 linha, 2 coluna da matriz

lista[[3]][4,2]

#Subsetting - Dentro da lista, obtenha o elemento que está
# na 3 linha, 2 coluna do data.frame

lista[[4]][3,2]
class(lista[[4]][3,2])

# Visualizar um banco de dados
View(my_farm)

lista
class(lista[[1]])
class(lista[[2]])
class(lista[[3]])

classes <- lapply(lista, class)

#############################
#Missing Data

idades <-c(20, 22, NA)
idades

##########
## Banco de Dados
# Data Frame

bd = data.frame(nome = c("Edésio", "Gerson",            ### é possivel quebrar a linha do argu-
                         "Adelvan", "Fabiano"),        ## mento para uma melhor visualização
                idade = c(24L, 25L, 23L, 28L),
                curso = c("CD", "CD", "CD", "BInf"),
                stringsAsFactors = F)

bd



## Examinando o Banco de Dados

class(bd)
dim(bd)  ## mostra tamanho do banco
nrow(bd)  ## quantas linhas
ncol(bd)   ## quantas colunas
str(bd)  ## estrutura do banco de dados


## OBS.: Factors são variáveis categóricas, ou seja, são variáveis divididas em 
## categorias ex.: cor/raça, curso, sexo. Ainda podem ser categóricas nominas em
## que não há relações entre elas (ex.: raça) e categóricas ordenadas (ex.: escolaridade)


## Adicionando linhas ou colunas em um banco de dados

times <- c("Barça","Sport", "Real Madrid", "PSG")

bd = cbind(bd, times)  ## Adiciona uma coluna ao final das colunas do data frame

bd

bd = rbind(bd, data.frame(nome = "Neylson",idade = 28L, curso = "CD", times = "Atlético"))
## Adicionamos uma linha ao final das linha do data frame
bd

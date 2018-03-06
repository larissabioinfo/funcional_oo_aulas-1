################################################
# CENTRO UNIVERSITÁRIO METODISTA IZABELA HENDRIX
# PROGRAMAÇÃO FUNCIONAL ORIENTADA A OBJETOS
# Aula 03
# por Layla Comparin
################################################

######

# Exercícios

# 1) Criar 2 vetores de tamnho 5

a <- c(1, 3, 5, 7, 9)
b <- c(2, 4, 6, 8, 10)

# 2) Soma da raíz quadrada do primeiro com o segundo 
# elevado ao cubo.

sqrt(a) + b^3

# 3) Crie um banco de dados com os nomes de todos os
# animais de estimação que você já teve.
# Obs.: Você já teve pelo menos 5 animais de 3 espécies
# diferentes! 
# No seu banco de dados deverá haver nome, idade, espécie
# alimentação/semana (kg) - numeric

nomes <- c("Zoinho", "Mel", "Fiona", "Branquinha", 'Maya')
idade <- c(2, 4, 5, 7, 50)
especie <- c("Peixe", "Cachorro", "Gato", "Periquito", 'Cachorro')
alimentacao <- c(0.04, 10.5, 1.37, 0.5, 20)

my_farm <- data.frame(nomes, idade, especie, alimentacao, stringsAsFactors = F)

my_farm$idade <- as.integer(my_farm$idade) # transformar a coluna idade em interger
my_farm$especie <- as.factor(my_farm$especie)
class(my_farm)  # classe do objeto
dim(my_farm)  # dimensões do objeto
str(my_farm) # estrutura do objeto

##### Subsetting

# Data.frame 
# Usando $

my_farm$idade
class(my_farm$idade)

# Usando []

my_farm[2]
class(my_farm[2]) # classe do objeto todo

my_farm[[2]]
class(my_farm[[2]]) # classe da variável

# [linha, coluna]
my_farm
my_farm[2,3]
class(my_farm[2,3]) # retorna a classe da variável na coordenada [2,3]

my_farm[1,] # retorna a linha 1
class(my_farm[1,]) # retorna a classe da linha

my_farm[,4] # retorna a coluna 4
class(my_farm[,4]) # retorna a classe da coluna

## Subsetting das linhas 1 e 2, coluna 3

my_farm[1:2, 3]

## Subsetting da linha 3, coluna 2 a 4

my_farm[3, 2:4]

## Subsetting das linhas 1 e 4, e linhas 2 e 4

my_farm[c(1,4), c(2,4)]

#######################

# listas

ls() # lista as variáveis do ambiente

A <- matrix(data = 1:10, 5, 2)

lista <- list(nomes, idade, A, my_farm)

## Subsetting na lista
#  só é possivel fazer com []

lista[3] 
class(lista[3])  # retorna a classe list

lista[[3]]
class(lista[[3]]) # retorna a classe do objeto 3 da lista

# Dentro da lista, faça um subsetting do elemento que está 
# na linha 4, coluna 2 da matriz

lista[[3]][4, 2]


# Dentro da lista, obtenha o elemento que está na 3 linha,
# na coluna 2 do data frame

lista[[4]][3, 2]

class(lista[[4]][3, 2])

##########
# Visualizando um banco de dados (útil para pequenos banco de dados)

my_farm

View(my_farm)

#################
# Tirando as classes da lista

lista

lapply(lista, class) # executa a função class em cada elemento da 
# lista (retorna lista e o sapply 
# [simplifica o output] retorna um vetor)

##############
# Missing data

idades <- c(20, 22, NA)

idades

# Caso especial de NA

0/0

###################
# Mão na massa

data("iris") # puxa o banco de dados nativo do R, iris
View(iris)

help("iris") # ajuda sobre o comando


dim(iris)
names(iris) # Nomes das variáveis do banco de dados
sapply(iris, class) # retorna a classe das variáveis do banco de dados
str (iris)

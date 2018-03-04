################################################
# CENTRO UNIVERSITÁRIO METODISTA IZABELA HENDRIX
# PROGRAMAÇÃO FUNCIONAL ORIENTADA A OBJETOS
# Aula 01
# por Layla Comparin
################################################

# R como calculadora

# operação de soma
5 + 5
# operação de subtração
5 - 7
# operação de divisão
12 / 4
# operação de multiplicação
6 * 23
# operação de potenciação
7 ^ 2
# calcula a raiz quadrada
sqrt(25)
# calcula o exponêncial
exp(4)
# exibe apenas o resto da divisão
10 %% 3
# calcula o logaritmo
log(54.59)
# Raíz cubica
64 ^ (1/3)

######

# Objetos

# atribuição de um valor por meio do operador '<-' para criar um objeto
x <- 5

# atribuição de um valor ao objeto y
y <- 7

# operação de soma com os objetos criados
x + y

#######

# Trabalhando com vetores
ls()   ## listar os objetos
rm (x, y)  # remover atribuições dos objetos

x <- c(5, 12, 39, 22, 25) # atribuir vetor à um objeto
x
y <- c(67, 13, 43, 34, 20)
y

# verifica o tamanho do vetor x
length(x)

x + y  # soma dos vetores
x - y # subtração dos vetores

class(x) 

x_inteiro = as.integer(x) ## mudar classe para inteiro
x
x_inteiro
class(x)
class(x_inteiro)

# Criando vetor de números inteiros 
# **inteiros são importantes porque não considera casas decimais (menor consumo de memória)
inteiros <- c(12L, 15L, 20L, 34L, 45L)

class(inteiros)

inteiros = as.numeric(inteiros) ## mudar classe para numeric
inteiros

####

# Trabalhando com STRING / CARACTER

prenome <- "Layla"
nome1 <- "Suellen"
nome2 <- "Vilela"
nome3 <- "Santos"
sobrenome <- "Comparin"

paste(prenome, nome1, nome2, nome3, sobrenome, sep = " - ")
#[1] "Layla - Suellen - Vilela - Santos - Comparin"

paste0(prenome, nome1, nome2, nome3, sobrenome)
#[1] "LaylaSuellenVilelaSantosComparin"

class(prenome)
"character"

paste0("bo", "ra")  ##junta as strings

########


# Vetores Lógicos

logicos = c(TRUE, FALSE, TRUE, FALSE)
logicos
logicos2 = c(T, T, F, F)
logicos2

is.numeric(logicos)  ## o vetor logicos é numeric ??
is.logical(logicos) ## o vetor logicos é lógico ??

5 > 3
5 < 3
5 == 6
5 != 6
5 >= 3

#######

# Sequências no R

1:10
sequencia = 1:100
sequencia

seq(from = 10, to = 20)   ## sequencia de 10 a 20
seq(from = 10, to = 20, by = 2) ## sequencia de 10 a 20, de 2 em 2
seq(from = 10, to = 20, length.out = 15)  ## sequencia de 10 a 20 com 15 elementos 

rep(1:3, times = 10) ## sequencia de 1 a 3, 10x a sequencia
rep(1:3, each = 10) ## sequencia de 1 a 3 com cada numero repetido 10x

#Matrizes

matrix(data = 1:16, nrow = 4, ncol = 4) #Matriz de vetores de 1 até 16
#com 4 linhas e 4 colunas

matrix(data = 1:16, nrow = 4, ncol = 4, byrow = TRUE) #Matriz preenchendo por linha
#Matriz de vetores de 1 até 16, 4 linhas e 4 colunas

# Data Frame

# cria um vetor de strings
nomes <- c("Gerson", "Edésio", "Adelvan", "Fabiano")

# cria um vetor de inteiros
idades <- c(25L, 26L, 26L, 26L)

# cria um vetor de strings
curso <- c("CD", "CD", "CD", "BioInf")

# cria um banco de dados usando a função data.frame() e atribui ao objeto dados
dados <- data.frame(nomes, idades, curso)

# imprime os dados do banco de dados
dados

# cria um vetor de strings
time <- c("Futuro flamenguista", "Futuro flamenguista", "Flamengo", "Futuro flamenguista")

# usa a funçaõ cbind() para incluir uma nova coluna ao banco de dados
dados <- cbind(dados, time)

# informa o número de linhas
nrow(dados)

# informa o número de colunas
ncol(dados)

# informa a estrutura do banco de dados passado como parâmetro
str(dados)

# stringAsFactore evita que os strings sejam transformados em Factor
banco <- data.frame(nomes, idades, curso, time,
                    stringsAsFactors = FALSE)

# imprime o banco de dados
banco

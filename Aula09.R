################################################
# CENTRO UNIVERSITÁRIO METODISTA IZABELA HENDRIX
# PROGRAMAÇÃO FUNCIONAL ORIENTADA A OBJETOS
# Aula 09
# por Layla Comparin
################################################

for(i in 1:20) {
  print((i+2)^2)
}

vetor <- c(1:20)
for(i in vetor) {
  vetor[i] = (i*3)^3
}
plot(vetor, col="purple", main = "Plotando o Gráfico Abaixo", type="b")


vetor <- c(1:50)
for(i in vetor) {
  if(i <= 10){
    print(paste("Pequeno -", i))
  } 
  else if (i > 10 && i <= 20){
    print(paste("Médio -", i))
  }
  else if (i > 20 && i <= 30){
    print(paste("Médio -", i))
  }
  else if (i > 30 && i <= 40){
    print(paste("Enorme -", i))
  }
  else if (i > 40 && i <= 49){
    print(paste("Gigante -", i))
  }
  else {
    print(paste("Chega!! -", i))
  }
}


##################
# Funcional e OO
# Prof. Neylson
# Gerson de Morais Vasconcelos Neto
#######

## Loops e controle de fluxo (condicionais)
# Para cada item de 1 a 20, printar o número + (2)^2

for (item in 1:20) {
  print((item + 2)^2)
}

# Para cada item de 1 a 20, guardar o (número*3)^3 num vetor e plotar um gráfico

vetor = c()  # cria um vetor vazio

for (i in 1:20) {
   vetor[i] = (i*3)^3
}   ## a posição i do vetor igual a (i*3)^3

plot(vetor, type = "l") # plotando o gráfico (type l para linha, b para both, e nada para 
                        # bolinhas)


###########
# Para um vetor de 1 a 50, de 1 a 10 <- pequeno
# de 11 a 20 <- médio
# de 21 a 30 <- grande
# de 31 a 40 <- enorme
# de 41 a 49 <- gigante
# 50 <- Chega!!!!


for (i in 1:50){
  if (i <= 10){
    print(paste("Pequeno -", i))
  }
  if (i > 10 & i <= 20){
    print(paste("Médio -", i))
  }
  if (i > 20 & i <= 30){
    print(paste("Grande -", i))
  }
  if (i > 30 & i <= 40){
    print(paste("Enorme -", i))
  }
  if (i > 40 & i <= 49){
    print(paste("Gigante -", i))
  }
  if (i == 50) {
    print(paste("Chega!!!! -", i))
  }
}


######
# Sequência de Fibonacci
fib = c()
fib[1] = 1
fib [2] = 1

for (i in 3:20){
  fib[i] = fib[i-1] + fib[i-2]
}

######
# Funções!!

minha_media <- function(x){
  print ("Função de média do Neylson")
  med = sum(x) / length(x)
  return(med)
}

minha_media # retorna o código no console

data("iris")


mean(iris$Sepal.Length)
minha_media(iris$Sepal.Length)  # testando a função


z = minha_media(iris$Sepal.Length)
z # vai retor


# fazer uma função que determina as classes, vai retornar a classe do elemento
# com um print "esse elemento possui a classe" ..

minha_classe <- function(obj){
  classe = class(obj)
  print(paste("Esse elemento possui a classe", classe))
  return(classe)
}

class(fib)
minha_classe(fib)

# criar uma função que printa na tela a media, mediana, variancia e dp


meu_sumario <- function(x) {
  cat(" Minhas estatísticas descritivas:")   ## o cat exibe na tela e o print retorna string
  cat("\n")
  mdn = median(x)
  md = mean(x)
  vari = var(x)
  desvp = sd(x)
  cat(paste(" Média =", md,"\n","Mediana =", mdn, "\n", "Variância =", vari, "\n",
              "Desvio padrão =", desvp))
}

meu_sumario(fib)


## OBS.: o print ja retorna a string com uma quebra de linha, então nesse código acima
##      se eu fosse usar o print ao invés do cat teria que pedir para ele retornar um por
##      um senão ele viria tudo colado numa linha só

## agora vamos criar um bando de dados e retornar isso ai


meu_sumario2 <- function(x) {
  cat(" Minhas estatísticas descritivas:")  
  cat("\n")
  mdn = median(x)
  md = mean(x)
  vari = var(x)
  desvp = sd(x)
  cat(paste(" Média =", md,"\n","Mediana =", mdn, "\n", "Variância =", vari, "\n",
            "Desvio padrão =", desvp, "\n"))
  
  dados <- data.frame(media = md, mediana = mdn, variancia = vari, desvio_p = desvp)
  return(dados)
   
}

meu_sumario2(fib)  ## adicionei um data frame com os dados

## apliquei aos elementos da iris[1:4] o meu_sumario2

sapply(iris[1:4], meu_sumario2)




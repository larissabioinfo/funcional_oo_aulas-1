################################################
# CENTRO UNIVERSITÁRIO METODISTA IZABELA HENDRIX
# PROGRAMAÇÃO FUNCIONAL ORIENTADA A OBJETOS
# Aula 10
# por Layla Comparin
################################################

install.packages("readr")
install.packages("dplyr")
install.packages("descr")
install.packages("microbenchmark")
library(readr) # Carrega o pacote 
library(dplyr) # Carrega o pacote
library(descr) # Carrega o pacote 
library(microbenchmark) # Carrega o pacote

enade14 <- read_csv2("https://raw.githubusercontent.com/neylsoncrepalde/introducao_ao_r/master/dados/enade_2014_amostra.csv")

#Funções

minha_media <- function(x, na.rm=F){
  if (na.rm == T){
    x = x[!is.na(x)]
  }
  med = sum(x) / length(x)
  return(med)
}

minha_media <- function(x, remove.na=F){
  if (remove.na == T){
    x = x[!is.na(x)]
  }
  med = sum(x) / length(x)
  return(med)
}


minha_media # retorna o código no console

minha_media(iris$Sepal.Length)  # testando a função
minha_media(enade14$nu_idade)  
minha_media(enade14$nt_ger, remove.na = T)


minha_media <- function(x, remove.na=F, std=F){
    if(class(x) == "integer"|
       class(x) == "numeric"){
    if (remove.na == T){
      x = x[!is.na(x)]
    }
    if (std == T){
      x = x/sd(x)
    }
    med = sum(x) / length(x)
    return(med)
       }
  else{
    stop("Object is not an integer or a numeric.")
  }
}

minha_media(enade14$nt_ger, remove.na = T)
minha_media(iris$Sepal.Length)
minha_media(enade14$nu_idade)  
minha_media(enade14$qe_i2) 

x = sapply(iris[1:4], minha_media, std = T)
class(x)
y = lapply(iris[1:4], minha_media, std = T)
class(y)

selecao = enade14 %>% select(nu_idade, nt_fg, nt_ce, nt_ger)
selecao

resposta = sapply(selecao, minha_media, remove.na=T, std=T)
resposta

resposta2 = c()
for (i in 1:ncol(selecao)){
  resposta2[i]=minha_media(selecao[[i]], remove.na = T, std = T)
}

resposta2

## Benchmark - Testa a eficiencia das tarefas executadas:

resposta2 = c()
microbenchmark(
  funcional = sapply(selecao, minha_media, remove.na=T, std=T),
  loop = for (i in 1:ncol(selecao)){
    resposta2[i]=minha_media(selecao[[i]], remove.na = T, std = T)
  }
)









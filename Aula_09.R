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




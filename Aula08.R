########## Automatização ###########


#### Loops

### Exibir os números de 1 a 100
#Loop "for"

#Sintaxe:
#  for(contador in conjunto) {
#    execute a ação
#  }

for(i in 1:100) {
  print(i)
}

for(i in 1:100) {
  print(i+2)
}
 
for(i in 1:100) {
  x = i+2
  y = x^2
  z = y/3
  print(z)
}

for(i in 1:20) {
  if(i <= 10){
   print("Pequeno")
  } 
  else {
   print ("Grande")
  }
}


vetor <- c(15,4,89,33,18,14,1,2,20,21,19)
for(i in vetor) {
  if(i <= 10){
    print(paste("Pequeno -", i))
  } 
  else if (i > 10 && i <= 20){
    print(paste("Médio -", i))
  }
  else {
    print(paste("Grande -", i))
  }
}

###Sequencia de Fibonacci

n <- 50

fib <- numeric(n)

fib[1] <- 0
fib[2] <- 1

for(i in 3:n){
  fib[i] <- fib[i - 1] + fib[i - 2]
}

fib
















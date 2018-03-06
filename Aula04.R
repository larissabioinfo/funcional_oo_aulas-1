################################################
# CENTRO UNIVERSITÁRIO METODISTA IZABELA HENDRIX
# PROGRAMAÇÃO FUNCIONAL ORIENTADA A OBJETOS
# Aula 04
# por Layla Comparin
################################################

# Banco de dados padrão do R
data("iris")
help(iris)
View(iris)

dim(iris) # Verificando o tamanho do banco de dados. 
class(iris)
sapply(iris, class) # Verifica a classe das variaveis
names(iris) # Verifica o nome das variaveis (coluna)
str(iris) # Verifica a estrutura do BD
head(iris) # Retorna os primeiros casos
tail(iris) # Retorna os ultimos casos

# Estatisticas descritivas com o pacote descr
install.packages("descr") # Instala o pacote (uma só vez)
library(descr) # Carrega o pacote 

# Quero ver as 10 primeiras linhas:
View(iris[1:10, 1:5]) # ou 
View(iris[1:10, ])

##################
# Investigar variável Sepal.Length

iris$Sepal.Length

#Medidas de Tendência Central
mean(iris$Sepal.Length) #Média
median(iris$Sepal.Length) #Mediana

#Medidas de Tendência Extrema
min(iris$Sepal.Length) #Máximo
max(iris$Sepal.Length) #Mínimo

#Decis (Cortado em 10 partes)
#Quartis (Cortado em 4 partes)
#|----------|-------------|----------------|-------------|
#min 7.9  1º quartil  mediana 5.8     3º quartil      máx 7.9

quantile(iris$Sepal.Length)

# Medidas de Disperção (Diz se o "tiro" sai aberto ou fechado. (Roda))
## Variância: σ² Na teoria da probabilidade e na estatística, 
## a variância de uma variável aleatória ou processo estocástico é uma 
## medida da sua dispersão estatística, indicando "o quão longe" em geral 
## os seus valores se encontram do valor esperado.

var(iris$Sepal.Length)

## Desvio Padrão: Em probabilidade, o desvio padrão ou 
## desvio padrão populacional (comumente representado pela letra grega 
## σ {\displaystyle \sigma } \sigma ) é uma medida de dispersão em torno 
## da média populacional de uma variável aleatória.

sd(iris$Sepal.Length)

sqrt(var(iris$Sepal.Length)) #Raiz quadrada da variância, conferindo o resultado acima.

# Comando que calcula estatisticas descritivas gerais, sem a Variância e sem o Desvio Padrão. 
summary(iris$Sepal.Length)


##################
# Investigar variável Species (Factor)

summary(iris$Species)
freq(iris$Species) # Gráfico de barras

########## Estatisticas descritivas das outras variáveis do BD Iris
summary(iris$Sepal.Width)
freq(iris$Sepal.Width)# Gráfico de barras
var(iris$Sepal.Width)
sd(iris$Sepal.Width)

### Visualizações (Histograma)
hist(iris$Sepal.Length) # Gráfico
hist(iris$Sepal.Width) # Gráfico

boxplot(iris$Sepal.Length)
boxplot(iris$Sepal.Width) # --- Bolinhas (outliers (Fora do padrão))










#Importando o pacote de dados (MASS )e o conjunto de dados (survey)
library(MASS)
data(survey)


#Variância
variancia_altura <- var(survey$Height, na.rm = TRUE)
variancia_pulso <- var(survey$Pulse, na.rm = TRUE)
variancia_idade <- var(survey$Age, na.rm = TRUE)


#Desvio Padrão
desvio_padrao_altura <- sd(survey$Height, na.rm = TRUE)
desvio_padrao_pulso <- sd(survey$Pulse, na.rm = TRUE)
desvio_padrao_idade <- sd(survey$Age, na.rm = TRUE)


#Imprimindo os resultados
cat("Pulso:\nVariância =", variancia_pulso, "\nDesvio Padrão =", desvio_padrao_pulso, "\n")
cat("Altura:\nVariância =", variancia_altura, "\nDesvio Padrão =", desvio_padrao_altura, "\n")
cat("Idade (anos):\nVariância =", variancia_idade, "\nDesvio Padrão =", desvio_padrao_idade, "\n")


#Clculando o desvio padrão das alturas separadamente para cada grupo de sexo
tapply(survey$Height, survey$Sex, sd, na.rm = TRUE)

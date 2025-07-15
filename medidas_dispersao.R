library(MASS)
data(survey)



variancia_altura <- var(survey$Height, na.rm = TRUE)

desvio_padrao_altura <- sd(survey$Height, na.rm = TRUE)

cat("Altura:\nVariância =", variancia_altura, "\nDesvio Padrão =", desvio_padrao_altura, "\n")



variancia_pulso <- var(survey$Pulse, na.rm = TRUE)

desvio_padrao_pulso <- sd(survey$Pulse, na.rm = TRUE)

cat("Pulso:\nVariância =", variancia_pulso, "\nDesvio Padrão =", desvio_padrao_pulso, "\n")



variancia_idade <- var(survey$Age, na.rm = TRUE)

desvio_padrao_idade <- sd(survey$Age, na.rm = TRUE)

cat("Idade (anos):\nVariância =", variancia_idade, "\nDesvio Padrão =", desvio_padrao_idade, "\n")



tapply(survey$Height, survey$Sex, sd, na.rm = TRUE)

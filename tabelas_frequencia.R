library(MASS)
data(survey)



tabela_freq_fumo <- table(survey$Smoke)
tabela_freq_fumo_ordenada <- sort(table(survey$Smoke), decreasing = TRUE)
tabela_freq_exer <- table(survey$Exer)
tabela_freq_sexo <- table(survey$Sex)

tabela_freq_rel_fumo <- prop.table(tabela_freq_fumo) * 100
tabela_freq_rel_exer <- prop.table(tabela_freq_exer) * 100


cat("Frequência Fumantes:\n")
print(tabela_freq_fumo)

print(tabela_freq_fumo_ordenada)

print(round(tabela_freq_rel_fumo, 2))


cat("Frequência Exercicios:\n")
print(tabela_freq_exer)

print(round(tabela_freq_rel_exer, 2))


cat("Frequência Gênero:\n")
print(tabela_freq_exer)



survey$AgeGroup <- cut(survey$Age, breaks = c(10, 20, 30, 40, 80), labels = c("10-19", "20-29", "30-39", "40+"))
tabela_freq_idade <- table(survey$AgeGroup)


cat("Frequência Idade:\n")
print(tabela_freq_idade)


table(survey$Sex, survey$Smoke)

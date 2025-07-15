library(MASS)
data(survey)



mediaAltura <- mean(survey$Height, na.rm = TRUE)
mediaIdade <- mean(survey$Age)

     
medianaAltura <- median(survey$Height, na.rm = TRUE)
medianaIdade <- median(survey$Age)



get_moda <- function(x) {
  tabela_freq <- table(x)
  moda_valor <- names(tabela_freq)[which.max(tabela_freq)]
  moda_freq <- max(tabela_freq)
  return(list(Categoria = moda_valor, Frequência = moda_freq))
}

modaFumar <- get_moda(survey$Smoke)
cat("Moda de Smoke:", modaFumar$Categoria, "\nFrequência:", modaFumar$Frequência, "\n")

modaExercitar <- get_moda(survey$Exer)
cat("Moda de Exer:", modaExercitar$Categoria, "\nFrequência:", modaExercitar$Frequência, "\n")

#table(survey$Height)
modaAltura <- get_moda(survey$Height)

#table(survey$Age
modaIdade <- get_moda(survey$Age)



cat("Análise da Altura  \n
    Média =", mediaAltura,  "\n
    Mediana =", medianaAltura,  "\n
    Moda =", modaAltura$Categoria, modaAltura$Frequência)

cat("Análise da Idade \n
    Média =", mediaIdade, "\n
    Mediana =", mediaIdade, "\n
    Moda =", modaIdade$Categoria, modaIdade$Frequência)

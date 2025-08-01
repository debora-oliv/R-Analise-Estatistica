#Importando o pacote de dados (MASS )e o conjunto de dados (survey)
library(MASS)
data(survey)


#Média
mediaAltura <- mean(survey$Height, na.rm = TRUE)
mediaIdade <- mean(survey$Age)


#Mediana
medianaAltura <- median(survey$Height, na.rm = TRUE)
medianaIdade <- median(survey$Age)


#Moda (o R não tem uma função nativa para calcular a moda, por isso é necessário criar uma função personalizada)
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

modaAltura <- get_moda(survey$Height)

modaIdade <- get_moda(survey$Age)


#Imprimindo os resultados
cat("Análise da Altura  \n
    Média =", mediaAltura,  "\n
    Mediana =", medianaAltura,  "\n
    Moda =", modaAltura$Categoria, modaAltura$Frequência)

cat("Análise da Idade \n
    Média =", mediaIdade, "\n
    Mediana =", mediaIdade, "\n
    Moda =", modaIdade$Categoria, modaIdade$Frequência)


# Objetivos
Escolher um pacote de dados e um conjunto de dados para fazer uma análise estatística. A análise em questão envolveu:

- [carregar pacote de dados](#carregar-pacote-de-dados)
- [carregar conjunto de dados](#carregar-conjunto-de-dados)
- [calcular medidas de tendência central](#medidas-de-tendência-central)
- [calcular medidas de dispersão](#medidas-de-dispersão)
- [gerar tabela de frequências](#tabela-de-frequências)
- [gerar gráficos](#gráficos)

# Carregar pacote de dados
```R
library(MASS)
```
O pacote de dados selecionado para analisar foi o MASS 

# Carregar conjunto de dados
```R
data(survey) 
```

# Medidas de tendência central

### Média
```R
mean(survey$Height, na.rm = TRUE)
```

### Mediana
```R
median(survey$Height, na.rm = TRUE)
```

### Moda
```R
table(survey$Height)
which.max(table(survey$Height))
```

# Medidas de dispersão

### Variância
```R

```

### Desvio padrão
```R

```

# Tabela de frequências
```R

```

# Gráficos

### Histograma
```R

```

### Pizza
```R

```

### Diagrama de dispersão
```R

```

### Gráfico de barras
```R

```

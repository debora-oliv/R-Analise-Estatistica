# Objetivos
Escolher um pacote de dados e um conjunto de dados para fazer uma análise estatística. O dataset selecionado foi o Survey, do pacote de dados MASS. O dataset é baseado em uma pesquisa feita com cerca de 237 estudantes universitários sobre seus hábitos (fumar, se exercitar, entre outros) e suas características (altura, idade, gênero, entre outros).

A análise em questão envolveu:

- [Medidas de tendência central](#medidas-de-tendência-central)
- [Medidas de dispersão](#medidas-de-dispersão)
- [Tabelas de frequências](#tabelas-de-frequências)
- [Correlação e Regressão](#correlação-e-regressão)
- [Gráficos](#gráficos)

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

# Tabelas de frequências
```R

```

# Correlação e Regressão
```R

```

# Gráficos

### Histograma
```R

```

### Diagrama de dispersão
```R

```

### Gráfico de barras
```R

```

### Pizza
```R

```

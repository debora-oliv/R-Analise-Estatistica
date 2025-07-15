library(ggplot2)
library(MASS)
data(survey)


#Histograma
ggplot(data = survey, aes(x = Height)) +
  geom_histogram(
    binwidth = 5,
    fill = "#12b5aa",
    color = "white",
    alpha = 0.8
  ) +
  labs(
    title = "Distribuição da Altura dos Estudantes",
    x = "Altura",
    y = "Frequência"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold"),
    axis.text = element_text(size = 10)
  )



#Pizza
dados_fumo <- as.data.frame(table(survey$Smoke))
names(dados_fumo) <- c("Categoria", "Frequência")

ggplot(dados_fumo, aes(x = "", y = Frequência, fill = Categoria)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  scale_fill_brewer(palette = "Set2") +
  labs(
    title = "Distribuição de Hábitos de Fumar",
    fill = "Categoria"
  ) +
  theme_void() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 14, face = "bold"),
    legend.position = "bottom"
  ) +
  geom_text(aes(label = paste0(round(Frequência / sum(Frequência) * 100, 1), "%")), 
            position = position_stack(vjust = 0.5), size = 4)



#Barras
ggplot(dados_fumo, aes(x = Categoria, y = Frequência, fill = Categoria)) +
  geom_bar(stat = "identity") +
  scale_fill_brewer(palette = "Set2") +
  labs(title = "Hábitos de Fumar") +
  theme_minimal()



#Diagrama de Dispersão
ggplot(survey, aes(x = Age, y = Height)) +
  geom_point(
    color = "#2eab5c",
    size = 3,
    alpha = 0.6
  ) +
  geom_smooth(
    method = "lm",
    color = "#945303"#,
    #se = FALSE
  ) +
  labs(
    title = "Relação entre Idade e Altura",
    x = "Idade",
    y = "Altura"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold")
  )
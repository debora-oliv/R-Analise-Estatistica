library(ggplot2)
library(MASS)
data(survey)



dados <- na.omit(survey[, c("Height", "Age", "Sex", "Smoke")])
dados$Sex <- as.factor(dados$Sex)
dados$Smoke <- as.factor(dados$Smoke)



#Correlação
plot(dados$Height, dados$Age,
     xlab = "Altura", ylab = "Idade",
     main = "Correlação entre Altura e Idade",
     col = "#649403", pch = 19)

correlacao_alturaXidade <- cor(dados$Height, dados$Age)
print(round(correlacao_alturaXidade, 2))



#Gráfico de dispersão
ggplot(dados, aes(x = Age, y = Height)) +
  geom_point(color = "#8d2cab", size = 3, alpha = 0.7) +
  geom_smooth(method = "lm", color = "#945303", se = FALSE) +
  labs(
    title = "Relação entre Altura e Idade",
    x = "Idade",
    y = "Altura"
  ) +
  theme_minimal()



#Regressõa Linear
modelo <- lm(Height ~ Age + Sex, data = dados)
coeficientes <- coef(modelo)
print(coeficientes)

ggplot(dados, aes(x = Age, y = Height, color = Sex)) +
  geom_point(size = 3, alpha = 0.6) +
  geom_smooth(method = "lm", se = FALSE) +
  scale_color_manual(values = c("#76b7b2", "#edc948")) +
  labs(
    title = "Altura vs. Idade por Gênero",
    x = "Idade (anos)",
    y = "Altura (cm)",
    color = "Gênero"
  ) +
  theme_minimal()
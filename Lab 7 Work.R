library(tidyverse)

iris

ggplot(data = iris, aes(x = Petal.Length, y = Petal.Width)) +
  geom_point(size = 2) +
  geom_smooth(method = "lm", size = 2, color = "red")


cor(iris$Petal.Length, iris$Petal.Width, use = "complete.obs")


Iris_Length_Width <-
  lm(Petal.Length ~ Petal.Width, data = iris)

summary(Iris_Length_Width)

virginica <- filter(iris, Species == "virginica")

virginica

ggplot(data = virginica, aes(x = Petal.Length, y = Petal.Width)) +
  geom_point(size = 2) +
  geom_smooth(method = "lm", size = 2, color = "blue")


cor(virginica$Petal.Length, virginica$Petal.Width, use = "complete.obs")

Virginica_Length_Width <-
  lm(Petal.Length ~ Petal.Width, data = virginica)

summary(Virginica_Length_Width)


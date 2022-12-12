#Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

#Carregando a biblioteca
library(readxl)
library(tidyverse)
library (ggplot2)

#Importando o arquivo do exercício 7
df.ex7 <- read_excel("./dados/exercicio7.xls",skip = 1, col_names = c("Áreas", "Atendimento"))

#transformando tabela em vetores
tabela.ex7 <- c(df.ex7)

#gráfico de barras

ggplot(df.ex7, aes( y= Atendimento, x = Áreas, fill = Áreas))+geom_bar (stat = "identity")

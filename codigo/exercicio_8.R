#Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

#Carregando a biblioteca
library(readxl)

#Importando o arquivo do exercício 8
df.ex8 <- read_excel("./dados/exercicio8.xls",skip = 1, col_names = c("Altura dos pacientes"), col_types = c("numeric"))

#transformando tabela em vetores
tabela.ex8 <- c(df.ex8)

#tabela de frequencia
tabfreq.ex8 <- table (tabela.ex8)
tabfreq.ex8

#histograma
hist(tabela.ex8$'Altura dos pacientes')

hist(tabela.ex8$'Altura dos pacientes', col = "blue", xlab = "Altura", ylab = "Frequência", main = "Altura dos pacientes")

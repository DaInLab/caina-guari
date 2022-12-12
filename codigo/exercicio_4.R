#Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

#Carregando a biblioteca
library(readxl)

#Importando o arquivo do exercício 4
df.ex4 <- read_excel("./dados/exercicio4.xls",skip = 1, col_names = "Salários", col_types = c("numeric"))

#transformando tabela em vetores
tabela.ex4 <- c(df.ex4$Salários)

#tabela de frequencia
tabfreq.ex4 <- table (tabela.ex4)
tabfreq.ex4

#histograma
hist(tabela.ex4)

hist(tabela.ex4, breaks = 7, col = "red", xlab = "Salário dos funcionários", ylab = "Frequência", main = " Histograma de Salários")

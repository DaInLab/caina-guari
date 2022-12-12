#Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

#Carregando a biblioteca
library(readxl)

#Importando o arquivo do exercício 9
df.ex9 <- read_excel("./dados/exercicio9.xls",skip = 1, col_names = c("Salários"))

#transformando tabela em vetores
tabela.ex9 <- c(df.ex9)
tabela.ex9

#tabela de frequencia
tabfreq.ex9 <- table(tabela.ex9)
tabfreq.ex9


#histograma
hist(tabela.ex9$Salários)

hist(tabela.ex9$Salários, col = "green", xlab = "Salário x Salário mínimo", ylab = "Frequência", main = "Salários")

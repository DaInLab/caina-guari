#Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

#Carregando a biblioteca
library(readxl)

#Importando o arquivo do exercício 3
df.ex3 <- read_excel("./dados/exercicio3.xlsx",skip = 1, col_names = c("Filhos" ,"Familias"), col_types = c("numeric"))

#transformando tabela em vetores
tabela.ex3 <- c(df.ex3)
tabela.ex3

#1.mediana
ex3.mediana <- median(df.ex3$Filhos)
ex3.mediana

#2.moda
tabfreq.ex3 <- table(tabela.ex3)
tabfreq.ex3

tabfreq.ex3[tabfreq.ex3 == max(tabfreq.ex3)]

#moda2 (dada pelo professor Black)
ex3.moda <- moda(df.ex3$Filhos)

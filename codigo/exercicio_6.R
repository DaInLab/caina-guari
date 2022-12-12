#Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

#Carregando a biblioteca
library(readxl)

#instalando o pacote Control Chart
install.packages("qcc")
library(qcc)

#Importando o arquivo do exercício 6
df.ex6 <- read_excel("./dados/exercicio6.xls",skip = 1, col_names = c("Qualidade", "Numero_pessoas"))

#transformando tabela em vetores
tabela.ex6 <- c(df.ex6)


#diagrama de Pareto com o pacote qcc (Quality Control Charts)
pareto.chart(df.ex6$Numero_pessoas, ylab = "Número de pessoas", xlab = "Qualidade", main = "Qualidade do atendimento", cumperc = seq(0,100, by=10))

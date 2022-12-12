#Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

#Carregando a biblioteca
library(readxl)

#Importando o arquivo do exercício 2
df.ex2 <- read_excel("./dados/exercicio2.xls",skip = 1, col_names = "casas", col_types = c("numeric"))

#a) construir uma tabela de frequências
#transformando tabela em vetores
tabela.ex2 <- c(df.ex2$casas)

#tabela de frequencia
tabfreq.ex2 <- table (tabela.ex2)
tabfreq.ex2

#b)calcular medidas de posição

#média
ex2.media <- mean(df.ex2$casas)
ex2.media

#mediana
ex2.mediana <- median(df.ex2$casas)
ex2.mediana

#moda
tabfreq.ex2[tabfreq.ex2 == max(tabfreq.ex2)]

#b)calculas medidas de dispersão

#desvio padrão
ex2_desviop <- round(sd(df.ex2$casas))

# calculando a variância
ex2_variancia <- round(var(df.ex2$casas))
var (df.ex2)

#Amplitude
amplitude = max(df.ex2) - min(df.ex2)

#gráficos
boxplot(df.ex2$casas)



  
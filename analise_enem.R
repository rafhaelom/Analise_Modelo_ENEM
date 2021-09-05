# Importando Bibliotecas.
library(usethis)
library(readr)

# Leitura de dados.
df <- read.csv("dados/MICRODADOS_ENEM_2018.csv", header = TRUE, 
               sep = ";", nrows = 300000)
View(df)
View(head(df))
View(tail(df))

# Análise Exploratória
dim(df) # Proporção dos dados.
colnames(df) # Nomes de colunas.
ncol(df) # Quantidade de colunas.
nrow(df) # Quantidade de linhas.
str(df) # Mostra a estrutura dos dados.

summary(df) # Estatísticas Básicas.

subset(df, SG_UF_RESIDENCIA = "DF")
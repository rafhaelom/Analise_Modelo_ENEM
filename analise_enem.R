# Importando Bibliotecas.
library(usethis)
library(readr)
library(readxl)

# Leitura de dados.
dados_raw_1 <- read_excel("dados/ENEM_2017_2019_AMOSTRA_01.xlsx", sheet = 1)
dados_raw_12 <- read_excel("dados/ENEM_2017_2019_AMOSTRA_01.xlsx", sheet = 1, n_max = 1000)
dados_raw_13 <- read_excel("dados/ENEM_2017_2019_AMOSTRA_01.xlsx", sheet = 1, skip = 45001)


df <- read.csv("dados/MICRODADOS_ENEM_2018.csv", header = TRUE, 
               sep = ";", nrows = 300000)


View(dados_raw_1)
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
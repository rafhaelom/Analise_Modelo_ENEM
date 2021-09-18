# Importando Bibliotecas.
library(usethis)
library(readr)
library(readxl)
library(dplyr)
library(tidyverse)
library(ggplot2)


# Leitura de dados.
dados <- read_excel("dados/ENEM_2017_2019_AMOSTRA_01.xlsx", sheet = 1)

View(dados) # Visualizar o dataset.
View(head(dados)) # Primeiros dados.
View(tail(dados)) # Últimos dados.

# Análise Exploratória
dim(dados) # Proporção dos dados.
colnames(dados) # Nomes de colunas.
ncol(dados) # Quantidade de colunas.
nrow(dados) # Quantidade de linhas.
str(dados) # Mostra a estrutura dos dados.

summary(dados) # Estatísticas Básicas.

#------------------------------------------------
# ANÁLISE EXPLORATÓRIA DE DADOS E VISUALIZAÇÃO: -
#------------------------------------------------
# 1 - Faça uma análise da variável NU_Nota_MT, em nível Brasil. Calcule estatísticas de resumo, o histograma e coloque 
#     títulos em suas análises. O que você pode afirmar dos candidatos em relação a nota de matemática?

summary(dados$NU_NOTA_MT)

hist(dados$NU_NOTA_MT, nclass = 50,
     main = "Distribuição da NU_NOTA_MT dos estudantes a nível Brasil",
     xlab = "NU_NOTA_MT", ylab = "Frequência")

ggplot(data = dados, aes(x = NU_NOTA_MT)) +
  geom_histogram(bins=50, fill='blue', color='black') +
  ggtitle("Distribuição da NU_NOTA_MT do ENEM 2017-2019")

# 2 - Faça uma análise da variável NU_Nota_MT, agora por Unidade da Federação da escola (SG_UF_RESIDENCIA). 
#     Calcule estatísticas de resumo, o histograma e coloque títulos em suas análises. O que você pode afirmar dos candidatos 
#     em relação a nota de matemática nos estados? Qual o estado com melhor nota? Qual o estado com pior nota?
tapply(dados$NU_NOTA_MT, dados$SG_UF_RESIDENCIA, summary)  

ggplot(data = dados, aes(x = NU_NOTA_MT)) +
  geom_histogram(bins=50, fill='blue', color='black') +
  ggtitle("Distribuição da NU_NOTA_MT por estado do ENEM 2017-2019")+
  facet_wrap(~SG_UF_RESIDENCIA)

# 3 - Repita a sua análise para as variáveis NU_Nota_CH, NU_Nota_CN, NU_Nota_LC, NU_Nota_Redacao e Nota_Media, 
#     Brasil e por Unidade da Federação da escola (SG_UF_RESIDENCIA). Calcule estatísticas de resumo, o histograma e 
#     coloque títulos em suas análises. O que você pode afirmar dos candidatos em relação as notas no Brasil e nos estados? 
#     Qual o estado com melhores notas no geral? Qual o estado com as piores notas no geral?
#----------------
# NU_NOTA_CH    -
#----------------

summary(dados$NU_NOTA_CH)

ggplot(data = dados, aes(x = NU_NOTA_CH)) +
  geom_histogram(bins=50, fill='blue', color='black') +
  ggtitle("Distribuição da NU_NOTA_CH do ENEM 2017-2019")

tapply(dados$NU_NOTA_CH, dados$SG_UF_RESIDENCIA, summary)  

ggplot(data = dados, aes(x = NU_NOTA_CH)) +
  geom_histogram(bins=50, fill='blue', color='black') +
  ggtitle("Distribuição da NU_NOTA_CH por estado do ENEM 2017-2019")+
  facet_wrap(~SG_UF_RESIDENCIA)

#----------------
# NU_NOTA_CN    -
#----------------
summary(dados$NU_NOTA_CN)

ggplot(data = dados, aes(x = NU_NOTA_CN)) +
  geom_histogram(bins=50, fill='blue', color='black') +
  ggtitle("Distribuição da NU_NOTA_CN do ENEM 2017-2019")

tapply(dados$NU_NOTA_CN, dados$SG_UF_RESIDENCIA, summary)  

ggplot(data = dados, aes(x = NU_NOTA_CN)) +
  geom_histogram(bins=50, fill='blue', color='black') +
  ggtitle("Distribuição da NU_NOTA_CN por estado do ENEM 2017-2019")+
  facet_wrap(~SG_UF_RESIDENCIA)

#----------------
# NU_NOTA_LC    -
#----------------
summary(dados$NU_NOTA_LC)

ggplot(data = dados, aes(x = NU_NOTA_LC)) +
  geom_histogram(bins=50, fill='blue', color='black') +
  ggtitle("Distribuição da NU_NOTA_LC do ENEM 2017-2019")

tapply(dados$NU_NOTA_LC, dados$SG_UF_RESIDENCIA, summary)  

ggplot(data = dados, aes(x = NU_NOTA_LC)) +
  geom_histogram(bins=50, fill='blue', color='black') +
  ggtitle("Distribuição da NU_NOTA_LC por estado do ENEM 2017-2019")+
  facet_wrap(~SG_UF_RESIDENCIA)

#----------------
# NU_NOTA_REDACAO    -
#----------------
summary(dados$NU_NOTA_REDACAO)

ggplot(data = dados, aes(x = NU_NOTA_REDACAO)) +
  geom_histogram(bins=50, fill='blue', color='black') +
  ggtitle("Distribuição da NU_NOTA_REDACAO do ENEM 2017-2019")

tapply(dados$NU_NOTA_REDACAO, dados$SG_UF_RESIDENCIA, summary)  

ggplot(data = dados, aes(x = NU_NOTA_REDACAO)) +
  geom_histogram(bins=50, fill='blue', color='black') +
  ggtitle("Distribuição da NU_NOTA_REDACAO por estado do ENEM 2017-2019")+
  facet_wrap(~SG_UF_RESIDENCIA)

#----------------
# NOTA_MEDIA    -
#----------------
summary(dados$NOTA_MEDIA)

ggplot(data = dados, aes(x = NOTA_MEDIA)) +
  geom_histogram(bins=50, fill='blue', color='black') +
  ggtitle("Distribuição da NOTA_MEDIA do ENEM 2017-2019")

tapply(dados$NOTA_MEDIA, dados$SG_UF_RESIDENCIA, summary)  

ggplot(data = dados, aes(x = NOTA_MEDIA)) +
  geom_histogram(bins=50, fill='blue', color='black') +
  ggtitle("Distribuição da NOTA_MEDIA por estado do ENEM 2017-2019")+
  facet_wrap(~SG_UF_RESIDENCIA)

#---------------------
# SELEÇÃO DOS DADOS: -
#---------------------
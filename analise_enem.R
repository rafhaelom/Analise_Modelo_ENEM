library(tidyverse)
library(readr)

prova <- read.csv("dados/ITENS_PROVA_2018.csv", header = TRUE, sep = ";")
print(prova)
View(prova)

dados <- read.csv("dados/MICRODADOS_ENEM_2018.csv", header = TRUE, sep = ";")
print(dados)
# ================================= #
# Instalação de pacotes necessários #
# ================================= #
install.packages("usethis")
install.packages("gitcreds")

library(usethis)
usethis::create_github_token()

# ===================================== #
# Adiciona o TOKEN do github no sistema #
# ===================================== #
gitcreds::gitcreds_set()
usethis::git_sitrep()

# ====================== #
# Conferir o local atual #
# ====================== #
getwd()

#
# Copia e cola no TERMINAL
#
git clone https://github.com/sophia-resende/curso-r-github-ia.git

# ============================= #
# Mudar o diretorio de trabalho #
# ============================= #
setwd("C:/Users/Sophi/OneDrive/Documentos/curso-r-github-ia/docs/")

# ========================= #
# Números, lógicos, strings #
# ========================= #
# <- indica valor de uma váriavel #
# Numérico (numeric): números decimais #
# Inteiro (integer): números inteiros #
# Lógico (logical): valores verdadeiro/falso - TRUE ou FALSE #
# Caractere (character): texto entre aspas #
x_num <- 3.14
x_log <- TRUE
x_chr <- "Olá, R"
class(x_num)
typeof(x_num)
class(x_log)
typeof(x_log)
class(x_chr)
typeof(x_chr)

# ========================== #
# Variável inteira (integer) #
# ========================== #
x_int <- 2
x_int2 <- 2L

class(x_int)
class(x_int2)

# =========== #
# Aritimética #
# =========== #
10 + 2 # somatório
10 - 2 # subtração
10 * 2 # multiplicação
10 / 3 # divisão
2 ^ 3 # exponencial

# =================================================================== #
# Infinito positivo. Significa que o valor tende ao infinito positivo #
# =================================================================== #
a <- 1 / 0 
a

# =================================================================== #
# Infinito negativo. Significa que o valor tende ao infinito negativo #
# =================================================================== #
b <- -1 / 0
b

# ================================================================== #
# Not a Number (NaN). Indica uma operação indefinida matematicamente #
# ================================================================== #
c <- 0 / 0
c

# ================================================================ #
# Valor ausente (NA). Representa um valor desconhecido ou faltante #
# ================================================================ #
d <- c(2, 4, NA, 8)
d

# ================= #
# Vetor de caractér #
# ================= #
f <- c("2", "4", NA, "8")
f
# ========================================================================= #
# Valores inteiros colocados com carateres passam a ser lidos como caractér #
# ========================================================================= #
g <- c("2", "4", NA, "8", 1L)
g

# ============================ #
# Testando os tipos de valores #
# ============================ #
is.infinite(a) # TRUE
is.nan(c) # TRUE
is.na(d) # TRUE para o elemento ausente
is.na(NaN) # TRUE — NaN é considerado um tipo especial de NA
is.finite(a) # FALSE — porque Inf não é finito
is.finite(10) # TRUE — número normal é finito

# ========================================================================== #
# ============================== Indexação ================================= #
# é o processo de acessar elementos específicos de um vetor usando colchetes #
# ========================================================================== #
v <- c(10, 20, 30, 40, 50)
v
length(v) #quantidade de váriaveis #
mean(v)   #média entre as variáveis#
sum(v)    #soma entre as variáveis #

mean(v) / sum(v)

# 1.  2.  3.  4.  5. #
c(10, 20, 30, 40, 50)


v[1]
v[2:4]
v[1:5]
v[-1]

sel <- v > 25 
sel

v[sel]
# Para selecionar o que retirar, coloca delimitação com -c() #
v[2:4] 
v[-c(2:4)]

# 1.  2.  3.  4.  5. #
c(10, 20, 30, 40, 50)
names(v) <- c("a", "b", "c", "d", "e")
# names(v) <- letters[1:5]
# mostrando vetor com nomes
v

# Acessando um elemento pelo nome #
v["a"]

# ================================================= #
# Criando uma lista com diferentes tipos de objetos #
# ================================================= #
info <- list(
  nome = "Sophia"
  , idade = 21
  , notas = c(8.5, 9.0, 7.5)
  , aprovado = TRUE
)

# Visualizando a lista completa #
info
str(info)
# str para mostrar estrutura #

# ========== #
# DATA FRAME #
# ========== #
#

# Lista: tipos mistos #
lst <- list(id = 1
            , nome = "Sophia"
            , aprovado = TRUE
            )
lst$nome

# Data frame #
alunos <- data.frame(
  id = 1:4
  , nome = c("Ana", "Bruno", "Caio", "Dani")
  , nota = c(8.5, 7.2, 9.1, 6.8)
  , ativo = c(TRUE, TRUE, FALSE, TRUE)
  , stringsAsFactors = FALSE
)
alunos

str(alunos)
nrow(alunos)     # número de linhas
ncol(alunos)     # número de colunas
names(alunos)    # nomes do objeto
head(alunos, 2)  # primeiras 2 linhas
tail(alunos, 2)  # últimas 2 linhas

# Acesso e novas colunas
alunos$nome
alunos$aprov <- ifelse(alunos$nota >= 7, "Aprovado", "Recuperação")
alunos 

# ======= #
# Fatores #
# ======= #
sexo <- factor(c("F", "M", "M", "F"), levels = c("F", "M"))
sexo
levels(sexo)
# ordem dos fatores alteram o resultado na sequência dos gráficos

conceito <- factor(c("B", "A", "C", "A"), levels = c("C", "B", "A"), ordered = TRUE)
conceito
summary(conceito)













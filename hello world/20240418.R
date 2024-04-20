require(stats)
require(graphics)
хх <- -9:9
plot(хх, sqrt(abs(хх)), col = "red")
lines(spline(хх, sqrt(abs(хх)), n=101), col = "pink")
5*7 + 4
7+8 #comentartio
4<5
5==4
parametro1 <- 6
str(parametro1)
par2 <- "Aleksandr"
str(par2)
parametro3 = 6
par4 <- 4==3
str(par4)
5==4
parametro1 == parametro3
nchar(par2)
a <- 1+4
b<-sqrt(a)
d <- b-1
str(d)
d > 2
my_vector_con_numeros <- c(3,6,8,5,4,4)
my_vector_con_letras <- c("Aleksandr","Jordi", "Conxi")
str(my_vector_con_letras)
str(my_vector_con_numeros)
a == A
A <- 98
a == A
A = 5
A == a
my_vector_con_letras[1]
my_vector_con_letras[1:2]
my_vector_con_numeros[3:5]
1:100
sqrt(my_vector_con_numeros)
length(my_vector_con_numeros)
length(my_vector_con_letras)
toupper(my_vector_con_letras)
vectro_incorrecto <- c("A",2,"rt",4)
str(vectro_incorrecto)
Primero_frame <- data.frame(nombre = c("Aleksandr","Jordi","Fernando","Adrián"), notas = c(10,10,10,10), telefono= c("678576834","456789456","456743423","68594654"), apto= c(TRUE,FALSE,TRUE,FALSE))
data()
head(iris)
is.data.frame(iris)
u<- 1:6
h<- matrix(u,2,4)
h
f<-array(u,c(2,1,4))
d <- 1:10
d
dim(d) <- c(2,5)
d
q <- array(f,c(2,4,5))
q
getwd()
read.csv("annual-enterprise-survey-2021-financial-year-provisional-csv.csv")
install.packages("tidyverse")

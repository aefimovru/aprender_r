# Vectores

Comandos que se utilizarán para resolver problemas con vectores

**print**() - Imprime el valor de una variable o el resultado de una expresión en la consola. Se utiliza para mostrar los resultados.
`print("Hello World")`

**c**() - Combina valores en un vector. Se utiliza para crear vectores o combinarlos.
`numeros <- c(1, 2, 3, 4, 5)`

**seq**() - Genera una secuencia de números. Puede especificar el inicio, el final y el paso.
`seq(1, 10, by = 1)`

**mean**() - Calcula la media aritmética de los elementos del vector.
`mean(c(1, 2, 3, 4, 5))`

**grep**() - Busca un patrón en cadenas de texto. Devuelve índices de cadenas que contienen el patrón buscado.
`grep("pattern", c("pattern1", "pattern2"))`

**ifelse**() - Construcción típica if else
`ifelse(1:10 > 5, "greater", "not greater")`

**cuantil**() - Calcula los cuantiles de un vector numérico.
`quantile(c(1, 2, 3, 4, 5), probs = 0.5)`

**tolower**(), **toupper**() - Convierten cadenas de texto a minúsculas o mayúsculas respectivamente.
`tolower('ABC')
toupper('abc')`

**substring**() - Extrae la subcadena de una cadena
`substring("Hello World", 1, 5)`

**as.Date**() - Convierte una cadena o un número a formato de fecha.
`as.Date("2023-01-01")`

**factor**() - Crea un factor a partir de un vector.
`factor(c("low", "medium", "high"))`

**as.numeric**() - Convierte un factor o cadena a formato numérico.
`as.numeric(factor(c("1", "2", "3")))`

**rnorm**() - Genera números aleatorios distribuidos normalmente.
`rnorm(100, mean = 0, sd = 1)`

**d**() - Calcula la desviación estándar de los elementos del vector.
`sd(c(1, 2, 3, 4, 5))`

**table**() - Construye la tabla de frecuencias de los elementos del vector.
`table(c("yes", "no", "yes"))`

**unique**() - Devuelve un vector que contiene sólo elementos únicos del vector original.
`unique(c(1, 2, 2, 3, 4))`

**sample**() - Selecciona elementos aleatorios del vector.
`sample(1:100, 10)`

**sort**() - Ordena los elementos del vector.
`sort(c(3, 1, 2))`

**runif**() - Genera números aleatorios distribuidos uniformemente.
`runif(10, min = 0, max = 100)`


### Tareas:

1. Crear un vector que contenga números del 1 al 20 y visualizarlo en la pantalla.
2. Sumar dos vectores, el primero que contenga números del 1 al 10 y el segundo que contenga números del 11 al 20, y mostrar el resultado.
3. Crear un vector con los nombres de los días de la semana y, a continuación, imprimir el tercer y el quinto día.
4. Añadir el número 6 a un vector de números del 1 al 5, luego sustituir el último número por 0.
5. Crear un vector con números del 1 al 10 e imprimir todos los números del vector que sean mayores que 5.
6. Calcular la suma, la media, el máximo y el mínimo de un vector con números del 1 al 100.
7. Ordenar un vector: Crear un vector con números aleatorios y ordenarlo de forma ascendente.
8. Cuadrar cada elemento de un vector con números del 1 al 10.
9. Encontrar las posiciones de todos los elementos de un vector que dividen por 3 sin resto.
10. Generar un vector que empiece con el número 10, termine con 100 y tenga un paso de 10.
11. Crea tres vectores. Combina los vectores en un vector. Halla el valor medio del vector combinado
12. Crea un vector con cadenas. Utiliza grep para encontrar elementos que contengan la letra 'a'.
13. Crear un vector numérico. Aplique una condición para sustituir los números negativos por 0
14. Crear un vector de números aleatorios. Calcular los cuantiles del vector
15. Crear un vector numérico. Encontrar todos los números divisibles por 3 y no divisibles por 5
16. Crear un vector de texto. Utilizar tolower, toupper, substring para modificar cadenas
17. Crear un vector con fechas. Suma 5 días a cada fecha
18. Crear un vector de factores con niveles. Convertir factores a valores numéricos
19. Generar un vector a partir de una distribución normal. Calcular la desviación típica y la media
20. Crear un vector con elementos repetidos. Encontrar los elementos únicos y sus frecuencias
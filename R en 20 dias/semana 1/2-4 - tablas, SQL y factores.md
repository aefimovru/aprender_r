# Exploración de fuentes y conjuntos de datos externos

## Tareas

1. Cargar datos de un archivo CSV que contiene información de ventas y mostrar los 10 primeros registros.
2. Elimine las filas con valores perdidos de los datos descargados.
3. Calcular las ventas totales multiplicando la cantidad por el precio de cada unidad.
4. Agrupar los datos por categoría de producto y resumir las ventas de cada categoría.
5. Ordenar los datos por orden descendente de ventas totales.
6. Representar gráficamente las ventas totales por mes.
7. Analiza las ventas utilizando el modelo ARIMA para predecir las ventas futuras.
8. Guardar los datos procesados en formato XLSX.
9. Escriba una consulta para seleccionar todos los empleados de la tabla Empleados contratados después de 2010.
10. Escriba una consulta para combinar las tablas Clientes y Pedidos por el campo CustomerID.
11. Seleccione los pedidos que tengan un importe total superior a 5000.
12. Escribir una consulta que cuente el número de pedidos de cada cliente.
13. Identificar los clientes que han realizado más de 10 pedidos en el último año.
14. Escriba una consulta para actualizar los datos de precios de los productos incrementando los precios en un 10%.
15. Exportar los resultados de la consulta a un archivo CSV.
16. Guardar los datos de ventas mensuales en un archivo CSV.
17. Exportar los datos de los clientes a un archivo XLS.
18. Guardar el informe de ventas en un archivo XLSX con pestañas multipágina.
19. Cargue los datos del archivo XLS con los datos de los empleados en su base de datos.
20. Busque y sustituya todas las abreviaturas como "n/a" por formas completas en los campos de texto.
21. Ponga todas las fechas en un formato coherente en el conjunto de datos.
22. Aplique la codificación de una sola vez a las variables categóricas.
23. Divida los datos en conjuntos de entrenamiento y de prueba para el análisis.
24. Utilice la biblioteca data.table para trabajar eficazmente con conjuntos de datos muy grandes.
25. Realice un PCA (análisis de componentes principales) para reducir la dimensionalidad de los datos.
26. Analice la distribución geográfica de sus tiendas y clientes mediante mapas.
27. Construir un modelo de regresión logística para predecir la probabilidad de pérdida de clientes.
28. Recopilar datos de precios de productos de varios mercados para analizar la competencia.
29. Analizar los datos de las redes sociales para estudiar el impacto de las campañas publicitarias.
30. Configurar el guardado automático de informes en el almacenamiento en la nube (por ejemplo, Google Drive o AWS S3).
31. Importe la matriz, conviértala en un marco de datos y guárdela en un archivo CSV. La matriz debe contener datos numéricos y simbólicos.
32. Cree un factor con más de 100 niveles y, a continuación, reduzca mediante programación el número de niveles en función de la frecuencia de aparición.
33. Crear una tabla tridimensional (matriz) basada en datos de frame que contenga variables numéricas y categóricas, y realizar diversas operaciones de agregación.
34. Escribir una función que tome un marco de datos y una lista de variables, y devuelva un marco de datos que contenga sólo aquellas variables que satisfagan las condiciones de distribución dadas.
35. Visualizar las relaciones entre las categorías de un factor mediante un gráfico de matriz de red.
36. Aplicar condiciones de filtrado complejas a un marco de datos y crear nuevas variables basadas en las condiciones y funciones complejas de otras variables.
37. Convertir un marco de datos con fecha y hora en una serie temporal y analizar tendencias y estacionalidad.
38. Construya un modelo de regresión multivariante utilizando factores como predictores e interprete el efecto de cada nivel de factor.
39. Utilizar dplyr o data.table para realizar agrupaciones y agregaciones complejas en grandes conjuntos de datos.
40. Encuentre y visualice los datos que faltan en la matriz y, a continuación, rellénelos utilizando métodos estadísticos (por ejemplo, la media de columnas).
41. Utilizar distintos tipos de operaciones de fusión (por ejemplo, interna, externa, izquierda, derecha) para combinar varios marcos de datos.
42. Realizar una investigación para evaluar la interacción entre diferentes factores y su efecto en la respuesta numérica.
43. Realizar un análisis de supervivencia utilizando datos de tiempo hasta el evento y variables categóricas como factores.
44. Utilizar ggplot2 o las capacidades gráficas básicas de R para crear visualizaciones personalizadas de datos matriciales.
45. Analizar datos textuales contenidos en un marco de datos utilizando técnicas de procesamiento de lenguaje natural.
46. Crear un modelo de aprendizaje automático para la predicción a partir de datos de trama, incluyendo variables numéricas y factoriales.
47. Integrar datos geográficos con el marco de datos y crear visualizaciones de mapas.
48. Aplicar el procesamiento paralelo para agregar y analizar grandes marcos de datos utilizando paquetes como parallel o future.
49. Agregar y analizar datos de diferentes fuentes y formatos.
50 Crear funciones personalizadas complejas para resolver problemas específicos de procesamiento de datos en R.

## El conjunto de conocimientos necesarios para resolver estos problemas

### Sin libreria(base)

read.csv(), write.csv() - leer y escribir archivos CSV.

data.frame() - crear y trabajar con tablas.

summary(), str() - proporcionar información de resumen y estructura de datos.

na.omit(), complete.cases() - manejo de valores perdidos.

aggregate(), merge() - agregación de datos y fusión de tablas.

mean(), sum(), min(), max() - funciones estadísticas básicas.

subset(), filter() - filtrado de datos.

lm(), glm() - modelos lineales y lineales generalizados.

t(), diag(), solve() - transposición de matrices, matrices diagonales e inversión de matrices.

eigen() - cálculo de valores y vectores propios.

levels(), relevel() - gestión de los niveles de los factores.

matrix() - creación de matrices.

data.frame() - creación de marcos de datos.

factor() - creación de variables factoriales.

xtabs() - creación de tablas de contigüidad.

plot() - función básica para crear gráficos en R.

median() - cálculo de la mediana.

table() - crear una tabla de frecuencias.

apply() - aplicar la función a los márgenes de la matriz.

is.na() - comprobar si hay valores NA.

na.rm - argumento para eliminar o ignorar valores NA.

if_else() - procesamiento condicional de datos.

replace_na() - reemplazar valores NA.


### Libreria dplyr y tidyr

filter(), select(), arrange() - filtrar, seleccionar columnas y ordenar.

mutate(), transmute() - creación o modificación de variables.

summarise(), group_by() - agregación y agrupación de datos.

group_by() - agrupación de datos por una o más variables.

summarise() o resumir() - agregación de datos después de la agrupación.

full_join() - fusión completa de dos marcos de datos.


### Libreria ggplot

ggplot() es la función principal para crear gráficos.

geom_point(), geom_polygon(), geom_line(), geom_bar(), geom_histogram() y otras funciones geom_* para diferentes tipos de gráficos.

aes() - definición de parámetros estéticos del gráfico, como color, forma.


### Epeciales

ts() - creación de series temporales.

arima() - modelización de series temporales con ARIMA.

dbConnect(), dbReadTable(), dbWriteTable() - conexión a bases de datos y operaciones de lectura/escritura.

sql() - ejecución de consultas SQL a través de R.

readxl::read_excel(), openxlsx::write.xlsx() - lectura y escritura de archivos Excel.

googledrive::drive_upload(), googledrive::drive_download() - carga y descarga de archivos a y desde Google Drive.

caret::train(), randomForest::randomForest() - entrenamiento de modelos y uso de random forest.

as.Date() - convertir a tipo fecha.

seq.Date() - crear una secuencia de fechas.

Corpus() - crear un corpus de texto.

tm_map() - aplicación de transformaciones a un corpus de texto.

TermDocumentMatrix() - crear una matriz término-documento.

randomForest() - creación de un modelo de bosque aleatorio.

detectCores() - detecta el número de núcleos del procesador.

makeCluster() - crear un cluster para cálculos paralelos.

registerDoParallel() - registrar cluster para trabajo paralelo.

foreach() y %dopar% - bucles para el procesamiento paralelo de datos.

stopCluster() - detiene el cluster.

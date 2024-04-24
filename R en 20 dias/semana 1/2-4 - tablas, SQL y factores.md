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

factor() - creación y procesamiento de factores.

levels(), relevel() - gestión de los niveles de los factores.



### Libreria dplyr

filter(), select(), arrange() - filtrar, seleccionar columnas y ordenar.

mutate(), transmute() - creación o modificación de variables.

summarise(), group_by() - agregación y agrupación de datos.

### Libreria ggplot

ggplot() es la función principal para crear gráficos.

geom_line(), geom_bar(), geom_histogram() y otras funciones geom_* para diferentes tipos de gráficos.

aes() - definición de parámetros estéticos del gráfico, como color, forma.


### Epeciales

ts() - creación de series temporales.

arima() - modelización de series temporales con ARIMA.

dbConnect(), dbReadTable(), dbWriteTable() - conexión a bases de datos y operaciones de lectura/escritura.

sql() - ejecución de consultas SQL a través de R.

readxl::read_excel(), openxlsx::write.xlsx() - lectura y escritura de archivos Excel.

googledrive::drive_upload(), googledrive::drive_download() - carga y descarga de archivos a y desde Google Drive.

caret::train(), randomForest::randomForest() - entrenamiento de modelos y uso de random forest.



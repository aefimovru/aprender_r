﻿# Instalación de Hadoop y Spark en Ubuntu 22.04


Este comando actualiza la lista de aplicaciones disponibles para descargar

`sudo apt update`

sudo significa que el programa debe ejecutarse como administrador. Y Ubuntu pedirá la contraseña. Durante un tiempo Ubuntu no pedirá la contraseña

Instalación de Java

`sudo apt-get install default-jdk curl ssh -y`

Comprobación de la versión de Java

`java -version`

![imgtest](https://raw.githubusercontent.com/aefimovru/aprender_r/050f1b4ddab3d021fecc1cdf9b33bee745c5c222/img/2024-04-20_16-30-27.png)

La versión 11 está instalada

Descargue la versión actual de Hadoop del sitio web de Apache

`wget https://dlcdn.apache.org/hadoop/common/hadoop-3.4.0/hadoop-3.4.0.tar.gz`

Desembalaré el archivo

`tar -xvzf hadoop-3.4.0.tar.gz`

Mover la carpeta al espacio de trabajo

`sudo mv hadoop-3.4.0/ /opt/hadoop`

A continuación, debe añadir parámetros a las variables del sistema. Nano es un análogo del Bloc de notas en Windows.

`nano ~/.bashrc`

Y añade el siguiente texto al final del archivo

```
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export HADOOP_HOME=/opt/hadoop
export HADOOP_INSTALL=$HADOOP_HOME
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export HADOOP_YARN_HOME=$HADOOP_HOME
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin
export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib/native"

```
Para que se vea así:

![imgtest](https://raw.githubusercontent.com/aefimovru/aprender_r/050f1b4ddab3d021fecc1cdf9b33bee745c5c222/img/2024-04-20_16-30-50.png)

Para salir de nano pulsar CTRL+X, el programa nos preguntará si queremos guardar el archivo y con qué nombre. Pulsar Y y ENTER.

Para que los cambios surtan efecto hay que ejecutar este comando

`source ~/.bashrc`

Abrir otro archivo con parámetros

`nano $HADOOP_HOME/etc/hadoop/hadoop-env.sh`

Añade esta línea o busca una línea existente y cámbiala

`JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64`

Para que se vea así 

![imgtest](https://raw.githubusercontent.com/aefimovru/aprender_r/050f1b4ddab3d021fecc1cdf9b33bee745c5c222/img/2024-04-20_16-31-05.png)

Voy a la carpeta de trabajo del programa

`cd /opt/hadoop/`

Creo allí un espacio de nombres y un espacio de datos

`mkdir -p ~/hadoopdata/hdfs/{namenode,datanode}`

Es necesario modificar el siguiente archivo

`nano $HADOOP_HOME/etc/hadoop/core-site.xml`

Este es el bloque que debe insertar en la sección "configuración"

```
    <property>
        <name>fs.defaultFS</name>
        <value>hdfs://localhost:9000</value>
    </property>
```

Para que se vea así: 

![imgtest](https://raw.githubusercontent.com/aefimovru/aprender_r/050f1b4ddab3d021fecc1cdf9b33bee745c5c222/img/2024-04-20_16-31-18.png)

Haz lo mismo con este archivo:

`nano $HADOOP_HOME/etc/hadoop/hdfs-site.xml`

```
    <property>
        <name>dfs.replication</name>
        <value>1</value>
    </property>
    <property>
        <name>dfs.namenode.name.dir</name>
        <value>file:///opt/hadoop/hadoopdata/hdfs/namenode</value>
    </property>
    <property>
        <name>dfs.datanode.data.dir</name>
        <value>file:///opt/hadoop/hadoopdata/hdfs/datanode</value>
    </property>
```

Y con esto:

`nano $HADOOP_HOME/etc/hadoop/mapred-site.xml`

```
   <property>
      <name>yarn.app.mapreduce.am.env</name>
      <value>HADOOP_MAPRED_HOME=$HADOOP_HOME/home/hadoop/hadoop/bin/hadoop</value>
   </property>
   <property>
      <name>mapreduce.map.env</name>
      <value>HADOOP_MAPRED_HOME=$HADOOP_HOME/home/hadoop/hadoop/bin/hadoop</value>
   </property>
   <property>
      <name>mapreduce.reduce.env</name>
      <value>HADOOP_MAPRED_HOME=$HADOOP_HOME/home/hadoop/hadoop/bin/hadoop</value>
   </property>
```

Y el último

`nano $HADOOP_HOME/etc/hadoop/yarn-site.xml`

```
    <property>
        <name>yarn.nodemanager.aux-services</name>
        <value>mapreduce_shuffle</value>
    </property>
```

Ahora podemos utilizar el comando HDFS. Vamos a formatear el espacio de nombres con este comando

`hdfs namenode -format`

![imgtest](https://raw.githubusercontent.com/aefimovru/aprender_r/050f1b4ddab3d021fecc1cdf9b33bee745c5c222/img/2024-04-20_16-31-32.png)

Ahora necesitamos poner en orden los derechos para ejecutar el programa. Crea una clave con este comando

`ssh-keygen -t rsa`

Las preguntas no tienen respuesta, basta con pulsar ENTER en cada pregunta 

![imgtest](https://raw.githubusercontent.com/aefimovru/aprender_r/050f1b4ddab3d021fecc1cdf9b33bee745c5c222/img/2024-04-20_16-31-43.png)

Coloque la clave obtenida en la carpeta de claves permitidas

`cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys`
`chmod 640 ~/.ssh/authorized_keys`

Intentando ejecutar Hadoop

`start-all.sh`

Así debería ser un lanzamiento

![imgtest](https://raw.githubusercontent.com/aefimovru/aprender_r/050f1b4ddab3d021fecc1cdf9b33bee745c5c222/img/2024-04-20_16-31-55.png)

Para comprobar si todo se ha iniciado correctamente, ejecute este comando

`jps`

Eso es lo que debemos conseguir

![imgtest](https://raw.githubusercontent.com/aefimovru/aprender_r/050f1b4ddab3d021fecc1cdf9b33bee745c5c222/img/2024-04-20_16-32-05.png)
 
Ahora conéctate al servidor desde el navegador de nuestro ordenador. No olvides cambiar la dirección IP por la tuya. Deberían abrirse 2 sitios

http://192.168.1.216:9870/

![imgtest](https://raw.githubusercontent.com/aefimovru/aprender_r/050f1b4ddab3d021fecc1cdf9b33bee745c5c222/img/2024-04-20_16-32-45.png)

Y éste

http://192.168.1.216:8088/

![imgtest](https://raw.githubusercontent.com/aefimovru/aprender_r/050f1b4ddab3d021fecc1cdf9b33bee745c5c222/img/2024-04-20_16-32-56.png)

Si todo va bien, detenga el programa e instálelo como servicio.

`stop-all.sh`

Crear un archivo de servicio

`sudo nano /etc/systemd/system/hadoop.service`

El contenido del archivo debe ser el siguiente. ¡¡¡¡NOTA!!!! Cambie los campos resaltados por su nombre de usuario

```
[Unit]
Description=Hadoop All
After=syslog.target network.target remote-fs.target nss-lookup.target network-online.target
Requires=network-online.target
[Service]
Environment="JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64"
Type=forking
User=USERNAME
Group=USERNAME
ExecStart=/opt/hadoop/sbin/start-all.sh
ExecStop=/opt/hadoop/sbin/stop-all.sh
WorkingDirectory=/opt/hadoop
TimeoutStartSec=1min
Restart=no
RestartSec=30
RemainAfterExit=yes
[Install]
WantedBy=multi-user.target
```

Reiniciar el Servicio de Gestión de Servicios

`sudo systemctl daemon-reload`

Iniciar y activar la ejecución automática

`sudo systemctl start hadoop`

`sudo systemctl enable hadoop`

Si ves esto, ya has terminado y puedes pasar a instalar Spark 

![imgtest](https://raw.githubusercontent.com/aefimovru/aprender_r/050f1b4ddab3d021fecc1cdf9b33bee745c5c222/img/2024-04-20_16-33-12.png)

# Instalación de Spark además de Hadoop

Volver a la carpeta de usuario

`cd ~`

Descargar la versión actual de Spark

`wget https://dlcdn.apache.org/spark/spark-3.4.2/spark-3.4.2-bin-hadoop3.tgz`

Desembalaje

`tar xvf spark-3.4.2-bin-hadoop3.tgz`

Mover a la carpeta de trabajo

`sudo mv spark-3.4.2-bin-hadoop3/ /opt/spark`

Editar variables del sistema

`nano ~/.bashrc`

Añade esto al final de los datos existentes sobrantes de Hadoop

```
export SPARK_HOME=/opt/spark
export PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin
```

Para que se vea así: 

![imgtest](https://raw.githubusercontent.com/aefimovru/aprender_r/050f1b4ddab3d021fecc1cdf9b33bee745c5c222/img/2024-04-20_16-33-25.png)

Aplicación de los cambios

`source ~/.bashrc`

Creación de un servicio para Spark

`sudo nano /etc/systemd/system/spark-master.service`

Ponga la siguiente información en el archivo. ¡¡¡¡NOTA!!!! No olvides cambiar el nombre de usuario

```
[Unit]
Description=Apache Spark Master
After=network.target
[Service]
Type=forking
User=USERNAME
Group=USERNAME
ExecStart=/opt/spark/sbin/start-master.sh
ExecStop=/opt/spark/sbin/stop-master.sh
[Install]
WantedBy=multi-user.target
Crear otro servicio
sudo nano /etc/systemd/system/spark-slave.service
```
Aquí está el contenido del archivo. ¡¡¡ATENCIÓN!!! Además del nombre de usuario, también debe cambiar la dirección IP
```
[Unit]
Description=Apache Spark Slave
After=network.target
[Service]
Type=forking
User=USERNAME
Group=USERNAME
ExecStart=/opt/spark/sbin/start-slave.sh spark://IP_DE_SERVIDOR_UBUNTU:7077
ExecStop=/opt/spark/sbin/stop-slave.sh
[Install]
WantedBy=multi-user.target
```

Activar todos estos servicios

`sudo systemctl daemon-reload`

`sudo systemctl start spark-master`

`sudo systemctl enable spark-master`

`sudo systemctl start spark-slave`

`sudo systemctl enable spark-slave`

Eso es lo que se supone que es:

![imgtest](https://raw.githubusercontent.com/aefimovru/aprender_r/050f1b4ddab3d021fecc1cdf9b33bee745c5c222/img/2024-04-20_16-33-36.png)

Compruébelo accediendo al sitio web de Spark. Introduzca la dirección de su servidor Debe tener este aspecto:

http://192.168.1.216:8080/

![imgtest](https://raw.githubusercontent.com/aefimovru/aprender_r/050f1b4ddab3d021fecc1cdf9b33bee745c5c222/img/2024-04-20_16-33-48.png)

Listo!
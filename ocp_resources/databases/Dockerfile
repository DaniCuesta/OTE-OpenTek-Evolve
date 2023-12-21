# Utiliza la imagen oficial de MySQL
FROM docker.io/mysql:latest

# Establece variables de entorno para la configuración de la base de datos
ENV MYSQL_ROOT_PASSWORD=root_password
ENV MYSQL_DATABASE=mi_basededatos

# Copia el archivo SQL a una ubicación temporal en el contenedor
COPY datos.sql /docker-entrypoint-initdb.d/

# Define el comando de inicio personalizado para ejecutar el archivo SQL
CMD ["docker-entrypoint.sh", "mysqld"]


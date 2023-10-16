# Usamos una imagen base de Ubuntu
FROM ubuntu:latest

# Etiqueta de información sobre el autor
LABEL maintainer="DaniC"

# Calcula la versión basada en la fecha y hora actual
ENV VERSION=$(date +"%Y%m%d%H%M%S")

# Copia un archivo de texto a la raíz del sistema de archivos
COPY hello.txt /hello.txt

# Comando a ejecutar cuando se inicie un contenedor basado en esta imagen
CMD ["cat", "/hello.txt"]

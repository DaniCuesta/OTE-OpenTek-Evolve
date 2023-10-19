# Usamos una imagen base de Ubuntu
FROM ubuntu:latest

# Etiqueta de información sobre el autor
LABEL maintainer="DaniC"

# Definimos la versión inicial en el Dockerfile
ENV VERSION=4.0

# Crea el archivo hello.txt directamente en la imagen
RUN echo "Hola mundooooo !!" > /hello.txt

# Ejecuta un comando que se mantendrá en ejecución
CMD ["tail", "-f", "/dev/null"]


# Usamos una imagen base de Ubuntu
FROM ubuntu:latest

# Etiqueta de información sobre el autor
LABEL maintainer="DaniC"

# Definimos la versión inicial en el Dockerfile
ENV VERSION=4.0

# Crea el archivo hello.txt directamente en la imagen
RUN echo "Hola mundooooo !!" > /hello.txt

# Ejecuta cat con un límite de tiempo de 5 minutos
CMD ["timeout", "5m", "cat", "/hello.txt"]


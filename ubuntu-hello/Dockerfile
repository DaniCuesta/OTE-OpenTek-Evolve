# Usamos una imagen base de Ubuntu
FROM ubuntu:latest

# Etiqueta de información sobre el autor
LABEL maintainer="DaniC"

# Definimos la versión inicial en el Dockerfile
ENV VERSION=1.0

# Incrementamos la versión (por ejemplo, agregando 0.1) en el Dockerfile
RUN export VERSION=$(awk "BEGIN {print $VERSION + 0.1}")

# Crea el archivo hello.txt directamente en la imagen
RUN echo "Hello World !!" > /hello.txt

# Comando a ejecutar cuando se inicie un contenedor basado en esta imagen
CMD ["cat", "/hello.txt"]


# Usamos una imagen base de Ubuntu
FROM ubuntu:rolling

# Etiqueta de información sobre el autor
LABEL maintainer="DaniC"

# Definimos la versión inicial en el Dockerfile
ENV VERSION=1.0

# Copia el script al directorio de trabajo en la imagen
COPY increment_version.sh /increment_version.sh

# Incrementa la versión utilizando el script
RUN /bin/bash /increment_version.sh

# Crea el archivo hello.txt directamente en la imagen
RUN echo "Hello World !!" > /hello.txt

# Comando a ejecutar cuando se inicie un contenedor basado en esta imagen
CMD ["cat", "/hello.txt"]


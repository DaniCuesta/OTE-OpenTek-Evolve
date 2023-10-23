# Usamos una imagen base de Ubuntu
FROM ubuntu:latest

# Etiqueta de información sobre el autor
LABEL maintainer="Dani C"

# Definimos la versión inicial en el Dockerfile
ENV VERSION=4.0

# Define una variable de entorno para el valor inicial del contador
ENV INITIAL_COUNT=2

# Crea un archivo de script para contar hasta 100
RUN echo '#!/bin/bash\ni=$INITIAL_COUNT\nwhile [ $i -le 100 ]; do\n  echo $i\n  i=$((i+1))\n  sleep 1\ndone' > /count.sh
RUN chmod +x /count.sh

# Ejecuta el script en segundo plano
CMD ["/count.sh"]




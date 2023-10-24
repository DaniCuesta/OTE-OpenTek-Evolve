# Etapa 1: Descargar el artefacto Java desde una ubicación externa
# Cualquier imagen base de un OS (Rhel, ubuntu...)
FROM alpine as builder
WORKDIR /app
RUN wget -O HelloWorld.jar https://github.com/DaniCuesta/artifacts/raw/main/HelloWorld.jar

# Etapa 2: Construir la imagen final
# Imagen base IST de OpenShift
FROM openjdk-11:1.17-2
WORKDIR /app
COPY --from=builder /app/HelloWorld.jar /app/
CMD ["java", "-jar", "HelloWorld.jar"]

# Mantener el contenedor en ejecución después de que la aplicación Java termine
CMD ["sh", "-c", "while :; do sleep 1; done"]


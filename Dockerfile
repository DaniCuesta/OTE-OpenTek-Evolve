# Etapa 1: Descargar el artefacto Java desde una ubicación externa
# Cualquier imagen base de un OS (Rhel, ubuntu...)
FROM alpine as builder
WORKDIR /app
RUN wget -O HelloWorld.jar https://dev.azure.com/danixxcm/_git/ocp_tests?path=/java-hello-world/HelloWorld.jar

# Etapa 2: Construir la imagen final
# Imagen base IST de OpenShift
FROM openjdk-11:1.17-2
WORKDIR /app
COPY --from=builder /app/HelloWorld.jar /app/
CMD ["java", "-jar", "HelloWorld.jar"]

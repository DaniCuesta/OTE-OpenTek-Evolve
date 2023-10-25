FROM openjdk-11:1.17-2
WORKDIR /app
COPY HelloWorld.jar /app/HelloWorld.jar
CMD ["java", "-jar", "HelloWorld.jar"]

# Mantener el contenedor en ejecución después de que la aplicación Java termine
CMD ["sh", "-c", "while :; do sleep 1; done"]


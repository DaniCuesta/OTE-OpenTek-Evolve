FROM openjdk-11:1.17-2
WORKDIR /app
COPY HelloWorld-SNAPSHOT.jar /app/HelloWorld-SNAPSHOT.jar
CMD ["java", "-jar", "HelloWorld-SNAPSHOT.jar"]

# Mantener el contenedor en ejecución después de que la aplicación Java termine
CMD ["sh", "-c", "while :; do sleep 1; done"]


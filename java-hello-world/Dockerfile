# Usa una imagen base con un entorno de compilación de Java (por ejemplo, OpenJDK)
FROM registry.access.redhat.com/ubi9/openjdk-11:1.16-2

# Establece el usuario root
USER root

# Establece el directorio de trabajo
WORKDIR /app

# Crea el archivo Java directamente en el contenedor con el comando echo
RUN echo 'public class HelloWorld {' >> HelloWorld.java && \
    echo '    public static void main(String[] args) {' >> HelloWorld.java && \
    echo '        System.out.println("Hello, World!");' >> HelloWorld.java && \
    echo '        while (true) {}' >> HelloWorld.java && \
    echo '    }' >> HelloWorld.java && \
    echo '}' >> HelloWorld.java

# Compila y ejecuta la aplicación Java
RUN javac HelloWorld.java

# Comando para ejecutar la aplicación Java como usuario root
CMD ["java", "HelloWorld"]

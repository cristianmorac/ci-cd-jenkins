# Usa una imagen oficial de OpenJDK 21 como base
FROM eclipse-temurin:21-jdk

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el JAR construido desde el host al contenedor
COPY ./target/*.jar /app/app.jar

# Expone el puerto si tu aplicación lo usa (ajusta si es necesario)
EXPOSE 8080

# Comando para ejecutar la aplicación
CMD ["java", "-jar", "/app/app.jar"]

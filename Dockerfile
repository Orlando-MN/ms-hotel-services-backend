# Cambiamos a '17-jdk' que es la etiqueta oficial más estable
FROM eclipse-temurin:17-jdk AS build

# El resto se queda igual (asegúrate de que el nombre del JAR sea el correcto)
COPY target/com-hotels-services-0.0.1-SNAPSHOT.jar com-hotels-services-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java","-jar","/com-hotels-services-0.0.1-SNAPSHOT.jar"]
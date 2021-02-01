

https://spring.io/guides/topicals/spring-boot-docker/




./gradlew build && java -jar build/libs/web-myapp-0.1.0.jar


docker build --build-arg JAR_FILE=build/libs/\*.jar -t raulickis/web-myapp .

docker build -t raulickis/web-myapp .
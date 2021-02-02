# web-myapp

Modelo de cadastro simples de Usuários e Endereços utilizando o Spring Boot Web, Bootstrap e JSP.

Depende da api-myapp (https://github.com/raulickis/api-myapp)

## Para gerar a imagem docker:

```
./gradlew build --warning-mode all 
docker build -t raulickis/web-myapp .
```

## Para executar o projeto com as dependências:

```
docker-compose up 
```

E na sequencia abrir no Navegador a seguinte URL:

http://localhost:8080


## Links úteis

Lista de ícones do Bootstrap => https://icons.getbootstrap.com/
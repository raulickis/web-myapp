# web-myapp

Modelo de cadastro simples de Usuários e Endereços utilizando o Spring Boot Web, Bootstrap e JSP.

Depende da api-myapp (https://github.com/raulickis/api-myapp)

Usar gradle 5.6.4 ao abrir o projeto (Home e Global settings)

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


## Para implantar o web-myapp no Kubernetes 

```
cd infra

kubectl delete configmap web-myapp-config 
kubectl create configmap web-myapp-config --from-env-file=../.env.kubernetes

kubectl delete -f deploy-web-myapp.yml
kubectl apply -f deploy-web-myapp.yml
```

## Links úteis

Lista de ícones do Bootstrap => https://icons.getbootstrap.com/


curl http://api-myapp.default.svc.cluster.local:9990/cadastro/usuario
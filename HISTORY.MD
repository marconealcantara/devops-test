decisões

1 - criar docker file com a imagem que vai subir no cluster

2 - subir o cluster com kind

kind create cluster --name <nome-do-cluster> --config kind-3nodes.yaml

3 - usar o helm para criar o helmchart

helm create <nome-do-chart>

4 - enviar a imagem docker pro dockerhub ou fazer build local

docker build -t app-marcone:latest

5 - instalar a app com o helm

helm install app-marcone app-marcone:latest

### melhorias no processo







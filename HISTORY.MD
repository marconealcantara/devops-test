decisões

1 - criar docker file com a imagem que vai subir no cluster

2 - subir o cluster com kind

kind create cluster --name <nome-do-cluster> --config kind-3nodes.yaml

3 - usar o helm para criar o helmchart

helm create <nome-do-chart>

4 - alterar o chart de acordo como necessário

5 - enviar a imagem docker pro dockerhub ou fazer build local

docker build -t app-marcone:latest

6 - instalar a app com o helm

helm upgrade --install app-marcone -f app-marcone/values.yaml app-marcone/ -n app-marcone

7 - nao menos importante sempre documentar 

criar arquivo readme.md.gotmpl e utilizar o helm docs para criar o readme.md

helm-docs

### melhorias no processo

1 - otimizar a imagem em um repo docker ex: docker hub
2 - construção do cluster via terraform
3 - deploy utilizando uma pipe de qualquer ci ( jenkins, github actions, bitbucket etc..)
4 - sobre monitoramente a app não tem nenhuma métrica que expoe para conseguir ler ex: /metrics então nesse caso interessante que ela gerasse essas informaçãos para construção de dashboards







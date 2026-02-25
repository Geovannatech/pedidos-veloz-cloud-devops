# pedidos-veloz-cloud-devops
Projeto acadêmico de modernização da plataforma Pedidos Veloz, aplicando práticas de Cloud DevOps com Docker, Kubernetes, CI/CD e Infraestrutura como Código.

Objetivo:

Demonstrar uma arquitetura baseada em microsserviços com:

Ambiente local padronizado

Conteinerização

Orquestração com Kubernetes

Escalabilidade automática

Pipeline de CI/CD

Estrutura inicial de IaC com Terraform

 Arquitetura:

A aplicação é composta por:

API Gateway

Serviço de Pedidos

Serviço de Pagamentos

Serviço de Estoque

 Ambiente Local (Docker Compose):

Para subir o ambiente local:

docker compose up --build

Todos os serviços são iniciados automaticamente.

 Kubernetes (Produção Simulada):

Os manifests estão na pasta:

/k8s

Incluem:

Deployment

Service

Horizontal Pod Autoscaler (HPA)

Para aplicar:

kubectl apply -f k8s/
 CI/CD:

Pipeline configurado com GitHub Actions:

Localização:

.github/workflows/ci.yml

Executa validação do projeto a cada push.

 Infraestrutura como Código:

Estrutura inicial com Terraform disponível na pasta:

/terraform

Contém definição básica de provider e estrutura de ambiente.

Estratégias Adotadas:

Rolling Update para deploy

HPA para escalabilidade automática

Containers leves

Padronização de ambiente com Docker Compose.

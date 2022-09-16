![Logo TiControla](https://user-images.githubusercontent.com/102192917/184401954-7b7c706b-c287-4c22-83b0-a3039213c627.jpg)

# Infrastructure as code (IaC)
IaC do cluster Kubernetes no qual a API do app TiControla roda.

## Repositórios do projeto
- [Docs](https://github.com/fga-eps-mds/2022-1-TiControla-Docs)
- [FrontEnd](https://github.com/fga-eps-mds/2022-1-TiControla-FrontEnd)
- [BackEnd](https://github.com/fga-eps-mds/2022-1-TiControla-BackEnd)
- [IaC](https://github.com/fga-eps-mds/2022-1-TiControla-IaC)

## Links úteis
- [Repositório do app mobile (frontend).](https://github.com/fga-eps-mds/2022-1-TiControla-FrontEnd)
- [Como fazer requisições HTTP para a API.](https://github.com/leomichalski/2022-1-TiControla-BackEnd/edit/main/README.md#como-fazer-requisi%C3%A7%C3%B5es-http-para-a-api-usando-curl)
- [Setup do ambiente de produção.](https://github.com/leomichalski/2022-1-TiControla-BackEnd/blob/main/src#setup-do-ambiente-de-debugdesenvolvimento)
- [Como contribuir.](https://github.com/fga-eps-mds/2022-1-TiControla-Docs/blob/main/CONTRIBUTING.md)
- [Outros documentos.](https://github.com/fga-eps-mds/2022-1-TiControla-Docs)

## Como criar o servidor usando DigitalOcean e Terraform.
A DigitalOcean oferece 100 USD de crédito para estudantes por meio do GitHub Student Developer Pack (estudantes da UnB tem acesso ao pack). Independente do GitHub Education, é necessário ter um cartão de crédito internacional para liberar o crédito de 100 USD.

##### Clonar o repositório.

```
git clone https://github.com/leomichalski/2022-1-TiControla-IaC
```

##### Mudar o diretório atual para "2022-1-TiControla-IaC".

```
cd 2022-1-TiControla-IaC
```

##### Criar um arquivo "terraform.tfvars".

```
touch terraform.tfvars
```

##### Botar o seguinte conteúdo no arquivo "terraform.tfvars" substituindo os valores adequadamente.

```
do_token = "SUBSTITUIR_PELO_SEU_TOKEN_DA_DIGITAL_OCEAN"
k8s_name = "k8s-name"
region   = "nyc1"
```

##### Inicializar o terraform.

```
terraform init
```

##### Ver as ações a serem realizadas antes de realizar.

```
terraform plan
```

##### Criar servidor ou executar alterações no servidor (é necessário escrever "yes" ou usar a flag -auto-approve).

```
terraform apply
```

##### ATENÇÃO: após criar o servidor e o cluster kubernetes, vai ser gerado um arquivo "kube_config.yaml" que será necessário para as próximas etapas.

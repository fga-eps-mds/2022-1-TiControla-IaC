# 2022-1-TiControla-IaC
Infrastructure as code (IaC) do cluster Kubernetes no qual a API do app Ti Controla roda.

### Como criar o servidor usando DigitalOcean e Terraform.
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

# Levantando estrutura docker
```
docker-compose up
```
#Levantamento da infra
Inicializa terraform
Formata
Valida
Applica a criação da infra com auto aprovação sem interação de 'yes'
```
terraform init 
terraform fmt
terraform validate
terraform apply -auto-approve
```
# AWSLocal check de items criados
Mostrar nome dos buckets
```
awslocal s3api list-buckets --query "Buckets[].Name" --endpoint-url=http://localhost:4566
```

Exibir os objetos no bucket
```
awslocal --endpoint-url=http://localhost:4566 s3 ls s3://lml-labs-bucket-terraform"
```
#Limpar Infra
Limpar a infra criada com o terraform
```
terraform destroy
```
#
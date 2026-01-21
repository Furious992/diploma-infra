# Diploma Infra (Yandex Cloud + Terraform)

Репозиторий содержит Terraform-конфигурации для дипломного практикума.

## Структура
- `00-bootstrap/` — создание service account и S3 bucket для backend (terraform state)
- `10-main/` — основная инфраструктура: VPC, подсети в 3 зонах, Managed Kubernetes, node group

## Требования
- Terraform
- yc CLI (авторизация выполнена через `yc init`)

## Запуск
### 1) Bootstrap
```bash
cd 00-bootstrap
terraform init
terraform apply

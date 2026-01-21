# Diploma Infrastructure Перцев Максим Андреевич

В этом репозитории находится инфраструктурная часть дипломного проекта.

Здесь с помощью Terraform была создана облачная инфраструктура в Yandex Cloud, включающая:
- сервисный аккаунт и Object Storage для хранения terraform state,
- виртуальную сеть и подсети в разных зонах доступности,
- managed Kubernetes кластер,
- группу рабочих нод.

Инфраструктура полностью управляется через Terraform и может быть пересоздана без ручных действий.

Дополнительно для Terraform настроен CI pipeline в GitHub Actions, который автоматически проверяет конфигурацию (fmt, validate, plan).

Связанные репозитории проекта:
- Приложение и CI/CD: https://github.com/Furious992/diploma-app  
- Kubernetes manifests и мониторинг: https://github.com/Furious992/diploma-k8s


![](https://github.com/Furious992/diploma-infra/blob/main/screen/version.png)
![](https://github.com/Furious992/diploma-infra/blob/main/screen/ycinit.png)
![](https://github.com/Furious992/diploma-infra/blob/main/screen/backendyes.png)
![](https://github.com/Furious992/diploma-infra/blob/main/screen/applyter.png)
![](https://github.com/Furious992/diploma-infra/blob/main/screen/publicip.png)
![](https://github.com/Furious992/diploma-infra/blob/main/screen/preemtibletrue.png)
![](https://github.com/Furious992/diploma-infra/blob/main/screen/creatingcluster.png)
![](https://github.com/Furious992/diploma-infra/blob/main/screen/clusterinfo.png)
![](https://github.com/Furious992/diploma-infra/blob/main/screen/clusterlist.png)
![](https://github.com/Furious992/diploma-infra/blob/main/screen/nodes.png)
![](https://github.com/Furious992/diploma-infra/blob/main/screen/pods.png)
![](https://github.com/Furious992/diploma-infra/blob/main/screen/YCStructure.png)

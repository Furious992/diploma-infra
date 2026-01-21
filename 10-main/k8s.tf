resource "yandex_kubernetes_cluster" "this" {
  name       = "diploma-k8s"
  network_id = yandex_vpc_network.this.id

  master {
    regional {
      region = "ru-central1"

      location {
        zone      = var.zone_a
        subnet_id = yandex_vpc_subnet.a.id
      }
      location {
        zone      = var.zone_b
        subnet_id = yandex_vpc_subnet.b.id
      }
      location {
        zone      = var.zone_d
        subnet_id = yandex_vpc_subnet.d.id
      }
    }

    version   = var.k8s_version
    public_ip = true
  }

  service_account_id      = coalesce(var.service_account_id, yandex_iam_service_account.k8s.id)
  node_service_account_id = coalesce(var.node_service_account_id, yandex_iam_service_account.k8s.id)

  release_channel = "STABLE"
}

resource "yandex_kubernetes_node_group" "this" {
  cluster_id = yandex_kubernetes_cluster.this.id
  name       = "diploma-ng"

  version = var.k8s_version

  scale_policy {
    fixed_scale {
      size = var.node_count
    }
  }

  allocation_policy {
    location {
      zone = var.zone_a
    }
    location {
      zone = var.zone_b
    }
    location {
      zone = var.zone_d
    }
  }

  instance_template {
    platform_id = "standard-v3"

    resources {
      cores  = var.node_cores
      memory = var.node_memory
    }

    boot_disk {
      type = "network-ssd"
      size = var.node_disk_gb
    }

    scheduling_policy {
      preemptible = true
    }

    network_interface {
      nat = var.node_nat
      subnet_ids = [
        yandex_vpc_subnet.a.id,
        yandex_vpc_subnet.b.id,
        yandex_vpc_subnet.d.id
      ]
    }
  }
}

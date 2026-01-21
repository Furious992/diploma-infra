resource "yandex_vpc_network" "this" {
  name = var.network_name
}

resource "yandex_vpc_subnet" "a" {
  name           = "${var.network_name}-a"
  zone           = var.zone_a
  network_id     = yandex_vpc_network.this.id
  v4_cidr_blocks = ["10.10.1.0/24"]
}

resource "yandex_vpc_subnet" "b" {
  name           = "${var.network_name}-b"
  zone           = var.zone_b
  network_id     = yandex_vpc_network.this.id
  v4_cidr_blocks = ["10.10.2.0/24"]
}

resource "yandex_vpc_subnet" "d" {
  name           = "${var.network_name}-d"
  zone           = var.zone_d
  network_id     = yandex_vpc_network.this.id
  v4_cidr_blocks = ["10.10.3.0/24"]
}

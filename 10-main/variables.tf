variable "cloud_id" {
  type = string
}

variable "folder_id" {
  type = string
}

variable "zone_a" {
  type    = string
  default = "ru-central1-a"
}

variable "zone_b" {
  type    = string
  default = "ru-central1-b"
}

variable "zone_d" {
  type    = string
  default = "ru-central1-d"
}

variable "network_name" {
  type    = string
  default = "diploma-net"
}

variable "k8s_version" {
  type    = string
  default = "1.32"
}

variable "node_count" {
  type    = number
  default = 2
}

variable "node_cores" {
  type    = number
  default = 2
}

variable "node_memory" {
  type    = number
  default = 4
}

variable "node_disk_gb" {
  type    = number
  default = 30
}

variable "node_nat" {
  type    = bool
  default = true
}

variable "service_account_id" {
  type    = string
  default = null
}

variable "node_service_account_id" {
  type    = string
  default = null
}

variable "cloud_id" { type = string }
variable "folder_id" { type = string }

variable "bucket_name" {
  type        = string
  description = "Unique bucket name"
}

variable "sa_name" {
  type    = string
  default = "tf-sa"
}

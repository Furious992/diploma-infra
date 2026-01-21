provider "yandex" {
  cloud_id  = var.cloud_id
  folder_id = var.folder_id

}

resource "yandex_iam_service_account" "tf" {
  name = var.sa_name
}


resource "yandex_resourcemanager_folder_iam_member" "tf_editor" {
  folder_id = var.folder_id
  role      = "editor"
  member    = "serviceAccount:${yandex_iam_service_account.tf.id}"
}

resource "yandex_iam_service_account_static_access_key" "tf_s3" {
  service_account_id = yandex_iam_service_account.tf.id
  description        = "Static key for Terraform state bucket"
}

resource "yandex_storage_bucket" "tf_state" {
  bucket    = var.bucket_name
  folder_id = var.folder_id
}

output "sa_id" {
  value = yandex_iam_service_account.tf.id
}

output "access_key" {
  value     = yandex_iam_service_account_static_access_key.tf_s3.access_key
  sensitive = true
}

output "secret_key" {
  value     = yandex_iam_service_account_static_access_key.tf_s3.secret_key
  sensitive = true
}

output "bucket_name" {
  value = var.bucket_name
}

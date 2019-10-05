variable "cluster_name" {
  default = "farrukh-cluster"
}

variable "node_count" {
  default = "2"
}

variable "google_project_id" {
  default = "ivory-forklift-220419"
}

variable "service_account_path" {
  default = "./farrukh-service-account.json"
}

variable "region" {
  default = "us-central1"
}

variable "bucket_name" {
  default = "farrukh-bucket"
}

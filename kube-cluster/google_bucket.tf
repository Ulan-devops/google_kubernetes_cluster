resource "google_storage_bucket" "farrukh_bucket" {
  name   = "${var.bucket_name}"
  storage_class = "COLDLINE"
  location = "${var.region}"
}

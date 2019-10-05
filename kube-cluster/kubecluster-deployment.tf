provider "google" {
  credentials = "${file("./farrukh-service-account.json")}" #GOOGLE_CREDENTIALS to the path of a file containing the credential JSON
  project     = "${var.google_project_id}"
}

resource "google_container_cluster" "cluster_farrukh_com" {
  name               = "${var.cluster_name}"
  network            = "default"
  subnetwork         = "default"
  zone               = "us-central1-a"
  min_master_version = "1.13.7-gke.24"
  initial_node_count = "${var.node_count}"
  project            = "${var.google_project_id}"

  node_config {
    machine_type = "n1-standard-2"
  }
}

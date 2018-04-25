resource "google_container_cluster" "primary" {
  name               = "${var.k8sname}"
  zone               = "${var.zone}"
  initial_node_count = 1

  additional_zones = [
    "${var.additional_zones1}",
    "${var.additional_zones2}",
  ]

  master_auth {
    username = "${var.user}"
    password = "${var.pwd}"
  }

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}

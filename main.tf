resource "random_string" "clustername" {
  length  = 8
  special = false
  upper   = false
  number  = false
}

resource "random_string" "user" {
  length  = 8
  special = false
}

resource "random_string" "pwd" {
  length  = 16
  special = true
}

data "google_compute_zones" "available" {
  status = "UP"
}

resource "google_container_cluster" "primary" {
  name               = "${random_string.clustername.result}"
  zone               = "${data.google_compute_zones.available.names[0]}"
  initial_node_count = 3

  additional_zones = [
    "${data.google_compute_zones.available.names[1]}",
    "${data.google_compute_zones.available.names[2]}",
  ]

  master_auth {
    username = "${random_string.user.result}"
    password = "${random_string.pwd.result}"
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

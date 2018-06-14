# The following outputs allow authentication and connectivity to the GKE Cluster.
output "endpoint" {
  value = "${google_container_cluster.primary.endpoint}"
}

output "instance_group_urls" {
  value = "${google_container_cluster.primary.instance_group_urls}"
}

output "username" {
  value = "${random_string.user.result}"
}

output "password" {
  value = "${random_string.pwd.result}"
}

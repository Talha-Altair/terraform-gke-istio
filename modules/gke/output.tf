output "status" {
  value = "${var.cluster_name} created"
}

output "cluster_endpoint" {
  value = google_container_cluster.primary.endpoint
}

output "ca_cert" {
  value = google_container_cluster.primary.master_auth.0.cluster_ca_certificate
}
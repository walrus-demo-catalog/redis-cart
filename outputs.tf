output "service_ip" {
  description = "Service IP"
  value       = data.kubernetes_service.service.spec.0.cluster_ip
}

output "service_name" {
  description = "Service name"
  value       = data.kubernetes_service.service.metadata.0.name
}

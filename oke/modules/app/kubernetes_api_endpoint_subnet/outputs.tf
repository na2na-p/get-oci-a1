output "id" {
  description = "作成されたサブネットのOCID"
  value       = oci_core_subnet.oke_kubernetes_api_endpoint_subnet.id
}

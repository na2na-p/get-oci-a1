output "id" {
  description = "作成されたサブネットのOCID"
  value       = oci_core_subnet.oke_service_lb_subnet.id
}

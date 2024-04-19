output "id" {
  description = "作成されたサブネットのOCID"
  value       = oci_core_subnet.oke_node_subnet.id
}

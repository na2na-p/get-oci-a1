output "id" {
  description = "作成されたルートテーブルのID"
  value       = oci_core_route_table.oke_route_table.id
}

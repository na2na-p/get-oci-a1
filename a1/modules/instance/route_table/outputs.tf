output "rt_id" {
  description = "作成されたルートテーブルのID"
  value       = oci_core_route_table.infrastructure_rt.id
}

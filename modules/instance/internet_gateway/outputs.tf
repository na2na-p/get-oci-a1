output "igw_id" {
  description = "作成されたインターネットゲートウェイのID"
  value       = oci_core_internet_gateway.infrastructure_igw.id
}

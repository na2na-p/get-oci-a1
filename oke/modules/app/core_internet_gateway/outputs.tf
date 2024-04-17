output "igw_id" {
	description = "作成されたインターネットゲートウェイのID"
	value       = oci_core_internet_gateway.oke_internet_gateway.id
}

output "id" {
	description = "作成されたNATゲートウェイのID"
	value       = oci_core_nat_gateway.oke_nat_gateway.id
}

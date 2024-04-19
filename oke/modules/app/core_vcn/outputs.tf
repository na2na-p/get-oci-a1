output "id" {
  description = "vcn_id"
  value       = oci_core_vcn.oke_vcn.id
}

output "ipv6_cidr_blocks" {
  description = "vcn_ipv6_cidr_blocks"
  value       = oci_core_vcn.oke_vcn.ipv6cidr_blocks
}

output "security_list_id" {
  description = "vcn_security_list_id"
  value       = oci_core_vcn.oke_vcn.default_security_list_id
}

output "default_route_table_id" {
  description = "vcn_default_route_table_id"
  value       = oci_core_vcn.oke_vcn.default_route_table_id
}

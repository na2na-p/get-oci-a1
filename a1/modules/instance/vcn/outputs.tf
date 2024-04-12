output "vcn_id" {
  description = "vcn_id"
  value       = oci_core_vcn.infrastructure_vcn.id
}

output "vcn_ipv6_cidr_blocks" {
  description = "vcn_ipv6_cidr_blocks"
  value       = oci_core_vcn.infrastructure_vcn.ipv6cidr_blocks
}

resource "oci_core_vcn" "infrastructure_vcn" {
  compartment_id                   = var.compartment_id
  cidr_blocks                      = var.vcn_cidr_blocks
  display_name                     = var.vcn_name
  is_ipv6enabled                   = "true"
  is_oracle_gua_allocation_enabled = "true"
}

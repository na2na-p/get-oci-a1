resource "oci_core_subnet" "infrastructure_subnet" {
  compartment_id             = var.compartment_id
  vcn_id                     = var.vcn_id
  cidr_block                 = var.subnet_cidr
  display_name               = var.subnet_name
  prohibit_internet_ingress  = false
  prohibit_public_ip_on_vnic = false
  ipv6cidr_block             = var.subnet_ipv6_cidr_block
}

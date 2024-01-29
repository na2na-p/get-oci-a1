resource "oci_core_internet_gateway" "infrastructure_igw" {
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = var.igw_name
}

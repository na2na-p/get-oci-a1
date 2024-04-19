resource "oci_core_nat_gateway" "oke_nat_gateway" {
  freeform_tags = {
    "ManagedBy" = "Terraform"
  }
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = var.nat_gateway_name
}

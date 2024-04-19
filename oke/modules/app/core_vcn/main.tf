resource "oci_core_vcn" "oke_vcn" {
  freeform_tags = {
    "ManagedBy" = "Terraform"
  }
  compartment_id = var.compartment_id
  cidr_block     = var.vcn_cidr_block
  display_name   = var.vcn_name
  dns_label      = var.dns_label
}

resource "oci_core_internet_gateway" "oke_internet_gateway" {
  freeform_tags = {
    "ManagedBy" = "Terraform"
  }
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = var.internet_gateway_name
  enabled        = "true"
}

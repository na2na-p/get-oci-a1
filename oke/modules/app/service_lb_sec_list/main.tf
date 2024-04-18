resource "oci_core_security_list" "service_lb_sec_list" {
  freeform_tags = {
    "ManagedBy" = "Terraform"
  }
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = var.service_lb_sec_list_name
}

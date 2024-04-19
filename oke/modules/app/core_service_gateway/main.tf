resource "oci_core_service_gateway" "oke_service_gateway" {
  freeform_tags = {
    "ManagedBy" = "Terraform"
  }
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = var.service_gateway_name
  services {
    service_id = "ocid1.service.oc1.ap-tokyo-1.aaaaaaaasijciseg5tzfchafero765m7yvl2dekfnayvyges6dnjnotlvzpa"
  }
}

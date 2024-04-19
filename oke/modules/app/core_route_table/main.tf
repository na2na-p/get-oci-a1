resource "oci_core_route_table" "oke_route_table" {
  freeform_tags = {
    "ManagedBy" = "Terraform"
  }
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = var.route_table_name

  route_rules {
    description       = "Traffic to Internet"
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = var.nat_gateway_id
  }

  route_rules {
    description       = "traffic to OCI services"
    destination       = "all-nrt-services-in-oracle-services-network"
    destination_type  = "SERVICE_CIDR_BLOCK"
    network_entity_id = var.service_gateway_id
  }
}
